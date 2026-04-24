---
title: 'Discussion of Broxterman, Larson, Yezer: "Characteristics of a Sufficient Statistic to Measure City Housing Prices"'
author: "Thomas Davidoff, Sauder School of Business, University of British Columbia"
date: "April 2026"
bibliography: broxtermanLarsonYezer.bib
---

## Paper Contributions

This paper shows that a transactions-based home price index will represent mean home price growth (as a Laspeyres index) only when either home price growth is constant across properties (implausible) or when transactions have weighted frequencies that match the characteristics of the entire housing stock (transacted or not). Next, the authors note that in a monocentric city with linear commuting costs in distance from downtown, constant appreciation rates as the urban boundary expands requires constant housing consumption with distance from downtown, which is unlikely.

Using both annual Census tract appreciation estimates from @ContatLarson (Figures 1 and 2) and coarser differences in appreciation rates between central cities and suburbs in American Housing Survey data (Tables 1 and 2), the paper shows both that appreciation rates and transaction frequencies vary with distance from downtown. The authors propose price indexes that average local (tract or central city versus suburb indicators) appreciation rates with weights proportional to housing units, rooms or value. Using @ContatLarson data, These three Laspeyres-consistent methods provide appreciation rate estimates that are visually indistinguishable at an annual frequency for Boston and Houston, but accumulate to mild differences over the three decades between 1990 and 2020.  

These are important contributions. The paper provides a guide to assemble price indexes that are more likely representative of price growth (and hence asset wealth and rent paid) for all households in a metropolitan area than most indexes which rely on representativeness of the transacted stock. To have broader impact, the paper should address the following questions, described in more detail below. 1. Is it really clear in theory that rent growth should vary by location? 2. Why focus on price growth heterogeneity by location as opposed to, say, structure type or price point?  3. How are geographic areas with high weight but low transactions to be treated in index computation?

## Is common growth across locations really implausible in theory?

In a standard dynamic monocentric city where commuting costs and the cost of
developing a constant quality home at the urban fringe $b(t)$ are constant, homes
appreciate by the amount by which fringe homes get worse: the product of
commuting cost per unit of distance at the urban fringe times the expansion of
the fringe. If boundary ($b(t)$) homes always cost $k$ to rent, then the cost
$x$ of a home at distance $r$ is $$x
= h(r)\left[k+\int_{r}^{b(t)}\frac{\theta}{h(z)}dz\right],$$ so $$\frac{dx}{dt}
= h(r)\theta\frac{\dot{b}}{h(b)},$$ and $$\frac{\frac{dx}{dt}}{x}
= \frac{\theta\frac{\dot{b}}{h(b)}}{h(r)\left[k+\theta\int_{r}^{b(t)}\frac{1}{h(z)}dz\right]}.$$
As the authors note, this will only be a constant if the denominator is
constant in $r$, e.g. if the income elasticity of housing demand is zero and
the price elasticity is minus one, an unlikely combination.

That we should not expect equal appreciation across locations given this result in a standard setting motivates the empirical analysis that shows non-constant appreciation across locations.

There is a plausible case, however, for constant appreciation across locations.
Recognizing that commuting speeds likely slow down as congestion increases near
the city center, concave commuting cost as a function of distance is a
reasonable modeling alternative. In @CosmanDavidoffWilliams, rents per unit are
derived in a special case as $$\log \: x(r) = \log h(r) + \log k +
\theta\log\frac{b}{r},$$ so $$\frac{d\log x}{dt} =
\theta\frac{\dot{b}}{b}x(r),$$ and appreciation is constant across locations
and equal to the rate of expansion of the urban fringe times the elasticity of
commute cost with respect to distance. An empirical question then is whether a
constant elasticity of commuting cost with respect to distance is a notably
poor approximation. If not, constant appreciation by distance (within product
type) may be plausible.


### Price and distance in Vancouver

Figure @fig:rentGradientVancouver shows median rent per square foot of condo
apartments by rounded kilometers distant from Downtown Vancouver sold in
Greater Vancouver in 2015 (before the exodus of foreign buyers in response to
empty homes and foreign buyer taxes) and 2023 against distance, up to 25
kilometers (roughly New Westminster). Data come from BC Assessment. Two
patterns stand out. First, up to 10 kilometers distance, the gradient flattened
dramatically between 2018 and 2023, violating equal appreciation. Second, a
constant gradient in either levels or logs does not fit the data particularly
well. In 2018, there is a pronounced flattening of the gradient at about 15
kilometers that is not as evident in 2023. Future work might explore whether
constant appreciation is implausible based simply on distance gradients, or
whether violations are primarily due to changes in demand conditions. For
Vancouver, the latter is plausible as foreign buyers may have been an important
clientele for luxury condos (see, e.g. @PavlovSomerville).


![Median condo price per square foot for condo sales in Greater Vancouver, 2015 and 2023. Data from BC Assessment](/Users/davidoff/projects/compression/text/distPriceYear.png){#fig:rentGradientVancouver}


## Is distance to downtown the right dimension of heterogeneity to focus on?

Even if constant elasticity of commuting costs with respect to distance is implausible, other sources of differences between transacted properties and the full stock may deserve as much or more focus in constructing and weighting sub-indexes.

### Pairwise Correlations in Greater Vancouver and the Fraser Valley

Available evidence suggests that price point and property type may be more important sources of variation in appreciation than  correlations as much as location within markets

Table @tbl:correlations shows correlations in 1-year price changes among single family and condo properties in Greater Vancouver and Fraser Valley markets, with the latter inclusive of the large suburb of Surrey as well as more exurban and rural locations. The correlations between the two markets' single family (.82) and condo (.70) are on average greater than cross-type correlations for within Greater Vancouver (.71) and the Fraser Valley (also .71). Over the 2014-2024 decade, Fraser Valley condos appreciated at an annual rate of 10.7\%, versus 5.9\% for Greater Vancouver single family homes. The intermediately priced Greater Vancouver condos and Fraser Value single family homes had intermediate appreciation rates. For Greater Vancouver, then, it would be important to ensure condos and single family homes be weighted relative to their population shares at all locations. And it appears that separate indexes would be appropriate for most analysis.



|  | VanSingle | VanCondo | FVSingle | FVCondo |
|---|---|---|---|---|
| VanSingle | 1.00 | 0.71 | 0.82 | 0.54 |
| VanCondo | 0.71 | 1.00 | 0.71 | 0.70 |
| FVSingle | 0.82 | 0.71 | 1.00 | 0.71 |
| FVCondo | 0.54 | 0.70 | 0.71 | 1.00 |

:Correlations among property types in 1-year price changes, data from Canadian Real Estate Association HPI for apartments (condos) and single-family homes for Greater Vancouver and Fraser Valley real estate markets {#tbl:correlations}


### Evidence from the boom and bust of the 2000s: Heterogeneity Driven by Subprime Propensity

@LandvoigtPiazessiSchneider show that price appreciation was highly correlated
with price point in Greater San Diego between 2000 and 2005, there is a spatial
pattern to price point, but they argue that the important similarity was
changes in credit conditions favoring appreciation at the low end of the
quality and wealth spectra. 

Figure @fig:zips below, taken from @DavidoffReview plots Zip Codes, with the
horizontal axis representing population minority share based on the 2000 Census
and the vertical axis representing the amplitude of the 2000s price cycle (log
peak level squared divided by pre-and-post levels). The red points are in
"flyover" metropolitan areas, the blue on the Northeast US "Acela Corridor" or
Pacific Coast, and the green are in the "Sand States" of Arizona,
Florida,Nevada and non-Coastal California. Given the link between minority
share and non-prime lending share and the seemingly high penetration of
subprime lending in the Sand States, this is further evidence that the most
intense geographic variation in price growth was driven by changing credit
conditions.

## Weighting choices

The authors propose that an index weight subindexes, e.g. at the Census Tract
level, based on the share of housing units, value, or rooms in each geography.
Figure 3 shows that the choice of basis for weighting has almost no effect at
high frequencies and small cumulative effects over three decades. The
discussion above suggests that subindexes should certainly include property
type and price point, and might aggregate up to broader locations to preserve
sample size.

Ignoring heterogeneity in rooms, value, and units, under the authors proposed
weighting scheme, transactions will have weight inversely proportion to
transaction activity in their sub-geography. This could add unwanted variance
to the index if there are cells with small numbers of observations. An
interesting exercise the authors might want to perform would be to consider
optimal borrowing across subindexes. To the extent that the model is right in
that distance from downtown is a key determinant of relative price growth, the
authors might draw on the literature on optimal bandwidth size and shape for
kernel estimators. A "rectangular'' with sharp boundaries at a tract boundary
being the optimal choice seems like a knife-edge case. To the extent that
submarkets consist of both property type or price point and location, the
multi-dimensional bandwidth problem becomes both more complex but also likely
more important as there may be a large number of cells with small numbers of
transactions over any period. Intertemporal smoothing might also be part of an
optimal index in that case.


![Zillow Zip code price peak squared divided by product of 2000 and 2012 levels against minority share (from @DavidoffReview)](/Users/davidoff/projects/commentary/discussions/zips.png){#fig:zips}

## Other issues: index use and data sources

It would be useful in this paper to see cases in which a poor choice of index
construction leads to a bad decision in an important context. Realtors and
assessors certainly recognize differences across submarkets, and do not assume
equal appreciation throughout a metropolitan area. It seems plausible, though,
that mortgage backed securities packages assumed constant growth and volatility
parameters within markets. @Hurstetal note that while US GSEs price loans
almost free of geographical information, the private market does not. But
whether loans are priced within markets based on appropriate indexes or
subindexes is potentially interesting. A candidate case in which
transaction-based indexes might are commonly used and yield estimates
unrepresentative of the overall stock are consumer price indexes, but that may
be a feature not a bug, in that for consumers looking for housing, the
transacted stock may be more relevant.

This paper uses American Housing Survey data to show the importance of proper
weighting of urban and suburban submarkets (Tables 1 and 2), but their
quantitative results on the effect on the metropolitan index are likely
affected by significant measurement error that arises in the AHS from some
combination of owner assessed values and small samples. A glance at FHFA data
versus estimates of appreciation from AHS show some stark differences. For
example, the authors find 13\% annual appreciation using AHS for metro Atlanta,
but FHFA indicates roughly 7\% annual growth between 2015 and 2019. This seems
like too large a gap to be explained just by aggregation weights. Other
metropolitan areas' appreciation rates appear more plausibly measured by AHS.

## Summary

This paper provides important guidance for home price index construction.
Transacted properties may fail to be representative of the overall housing
stock for several reasons. Price indexes for larger markets can be important
for exercises such as measuring home equity or average rents paid, and thus
should be representative of the whole housing stock, not just the transacted
stock. Ensuring that index weights are not biased towards the transacted stock
can be accomplished, as the authors suggest, by weighting cells not by
transactions, but rather units, rooms, or value. 

Two remaining challenges for implementation of the proposed weighting scheme
are how to treat property type and price point heterogeneity, and whether to
borrow or smooth from neighboring cells in computing weighted sub-indexes. With
finer data than AHS, it would be useful to show the relative contributions of
location, property type and price point to appreciation heterogeneity. To the
extent that location is relatively unimportant, it may be preferable to keep
subindex geography relatively broad, e.g. to the county or municipal level.
