# debatePermits.R
# R1-1 permit counts: round(width) in {33,50} x {2024,2025,2026} x East/West (Ontario St)
#   x {single, duplex, multiplex}
# Tom Davidoff
# 09/07/26

MIN_PERMIT_YEAR <- 2018    # keep permit years strictly greater than this
USE_MIN_N       <- 100     # SpecificUseCategory kept if it has more than this many permits
CRITVAL         <- 0.5     # ProjectValue percentile threshold for non-new-SFD permits
MATCHDIST       <- 7.5     # nearest-folio gate, meters
ONTARIO_LON     <- -123.1036   # Ontario St meridian: lon < this = West Side

library(data.table)
library(sf)
library(RSQLite)

sf_use_s2(TRUE)

# ---- geometry: 2026 roll-number-start -> centroid lon/lat -------------------
fGeo     <- "~/DropboxExternal/dataProcessed/bca26FolioGeometryVancouver.rds"
dtGeo <- readRDS(fGeo)
dtGeo[, rr := frank(rollStart), by = rollStart]
dtGeo <- dtGeo[rr == 1, .(rollStart, longitude, latitude)]

# ---- SFD folio inventory (for landWidth via nearest match) -----------------
# guarded build kept only because you asked to keep existing file-exists loops
fnameSingles <- "~/DropboxExternal/dataProcessed/bca19VancouverSingles.rds"
if (!file.exists(fnameSingles)) {
  bca19 <- "~/DropboxExternal/dataRaw/REVD19_and_inventory_extracts.sqlite3"
  con <- dbConnect(RSQLite::SQLite(), bca19)
  dtBCA19 <- data.table(dbGetQuery(con, "
    SELECT d.folioID, f.rollNumber, i.MB_effective_year, i.MB_total_finished_area,
       CAST(i.land_width AS NUMERIC) AS land_width, CAST(i.land_depth AS NUMERIC) AS land_depth,
       d.actualUseDescription,
       CAST(d.landWidth AS NUMERIC) AS landWidth, CAST(d.landDepth AS NUMERIC) AS landDepth,
       CAST(v.landValue AS NUMERIC) AS landValue
    FROM folio f
    JOIN residentialInventory i ON i.roll_number = f.rollNumber
    JOIN folioDescription d      ON d.folioID     = f.folioID
    JOIN valuation v            ON v.folioID  = f.folioID
    WHERE f.jurisdictionCode = '200'
  "))
  dtBCA19[, rollStart := floor(as.numeric(rollNumber) / 1000)]
  dtBCA19[is.na(landWidth), landWidth := land_width]
  dtBCA19[is.na(landDepth), landDepth := land_depth]
  dtBCA19 <- merge(dtBCA19, dtGeo, by = "rollStart", all.x = TRUE)
  dtSingles <- dtBCA19[actualUseDescription %in%
                         c("Single Family Dwelling", "Residential Dwelling with Suite"),
                       .(landWidth, landDepth, MB_total_finished_area, MB_effective_year,
                         rollNumber, folioID, longitude, latitude, landValue)]
  dtSingles <- dtSingles[!is.na(longitude) & !is.na(latitude)]
  saveRDS(dtSingles, fnameSingles)
}
dtSingles <- readRDS(fnameSingles)

# ---- permits ---------------------------------------------------------------
dtP <- fread(
  "~/DropboxExternal/dataRaw/issued-building-permitsDwellingUses.csv",
  select = c("SpecificUseCategory", "PermitNumber", "geo_point_2d",
             "PermitNumberCreatedDate", "TypeOfWork", "ProjectValue")
)
dtP[, c("lat", "lon") := tstrsplit(geo_point_2d, ",\\s*", type.convert = TRUE)]

# ---- R1-1 zoning gate ------------------------------------------------------
dgZ <- st_read("~/DropboxExternal/dataRaw/vancouver_zoning.geojson")
dgZ <- dgZ[dgZ$zoning_district == "R1-1", ]

dtPgeo <- st_as_sf(dtP[!is.na(lat), .(PermitNumber, lat, lon)],
                   coords = c("lon", "lat"), crs = 4326)
dtPgeo <- st_join(dtPgeo, dgZ, join = st_within)
r1Permits <- unique(as.data.table(dtPgeo)$PermitNumber)
cat("R1-1 permits:", length(r1Permits), "\n")

# ---- analysis permit sample (same filters as parent script) ----------------
dtP <- dtP[PermitNumber %in% r1Permits]
dtP[, year := as.numeric(substr(PermitNumberCreatedDate, 1, 4))]
dtP <- dtP[year > MIN_PERMIT_YEAR]
useList <- dtP[, .N, by = SpecificUseCategory][order(-N)][N > USE_MIN_N, SpecificUseCategory]
dtP <- dtP[SpecificUseCategory %in% useList]
dtP[, single := grepl("Single", SpecificUseCategory)]
minSpend <- quantile(dtP[TypeOfWork == "New Building" & single == 1, ProjectValue], CRITVAL)
dtP <- dtP[TypeOfWork == "New Building" | (ProjectValue > minSpend)]
dtP <- dtP[!is.na(lat) & !is.na(lon)]
dtP[, duplex    := grepl("Duplex", SpecificUseCategory)]
dtP[, multiPlex := SpecificUseCategory == "Multiple Dwelling"]
cat("analysis permits after all filters:", nrow(dtP), "\n")

# ---- nearest-folio width match ---------------------------------------------
dtPgeoNN <- st_as_sf(dtP[, .(PermitNumber, lat, lon)], coords = c("lon", "lat"), crs = 4326)
dfSingle <- st_as_sf(dtSingles, coords = c("longitude", "latitude"), crs = 4326)

idx  <- st_nearest_feature(dtPgeoNN, dfSingle)
dist <- as.numeric(st_distance(dtPgeoNN, dfSingle[idx, ], by_element = TRUE))  # meters

matched <- as.data.table(st_drop_geometry(dfSingle))[idx]
matched[, PermitNumber := dtP$PermitNumber]                 # order-safe: idx in dtP order
matched[, dist := dist]
matched <- matched[dist < MATCHDIST, .(PermitNumber, landWidth)]
dtP <- merge(dtP, matched, by = "PermitNumber")
cat("permits with a width match (<", MATCHDIST, "m):", nrow(dtP), "\n")

# ---- classify: width, side, category ---------------------------------------
dtP[, widthClass := round(landWidth)]
dtP <- dtP[widthClass %in% c(33, 50)]
dtP[, side := ifelse(lon < ONTARIO_LON, "West", "East")]
dtP[, cat := fifelse(multiPlex, "multiplex",
              fifelse(duplex,   "duplex",
              fifelse(single,   "single", NA_character_)))]
dtP <- dtP[!is.na(cat) & year %in% c(2024, 2025, 2026)]

# ---- counts ----------------------------------------------------------------
cnt <- dtP[, .N, by = .(year, side, widthClass, cat)][
         order(year, side, widthClass, cat)]

cat("\n==== R1-1 permit counts: year x side (Ontario St) x round(width) x category ====\n")
print(cnt)

cat("\n---- wide: category rows, (year|side|width) columns ----\n")
print(dcast(dtP, cat ~ year + side + widthClass, value.var = "PermitNumber",
            fun.aggregate = length))
