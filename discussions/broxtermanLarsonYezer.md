---
title: "Discussion of Broxterman, Larson, Yezer: 'Characteristics of a Sufficient Statistic to Measure City Housing Prices'"
author: "Thomas Davidoff, Sauder School of Business, University of British Columbia"
date: "April 2026"
bibliography: broxtermanLarsonYezer.bib
output: word_document
---

## Paper Contributions

This paper shows that a transactions-based home price index will represent mean home price growth (as a Laspeyer's index) only when either home price growth is constant across properties (implausible) or when transactions have weighted frequencies that match the characteristics of the entire housing stock (transacted or not). Next, the authors note that in a monocentric city with linear commuting costs in distance from downtown, constant appreciation rates as the urban boundary expands requires constant housing consumption with distance from downtown, which is unlikely.

Using both annual Census tract appreciation estimates from [@ContatLarson] (Figures 1 and 2) and coarser differences in appreciation rates between central cities and suburbs in American Housing Survey data (Tables 1 and 2), the paper shows both that appreciation rates and transaction frequencies vary with distance from downtown. The authors propose price indexes that average local (tract or central city versus suburb indicators) appreciation rates with weights proportional to housing units, rooms or value. Using [@ContatLarson] data, These three Laspeyre's-consistent methods provide appreciation rate estimates that are visually indistinguishable at an annual frequency for Boston and Houston, but accumulate to mild differences over the three decades between 1990 and 2020.  

These are important contributions. The paper provides a guide to assemble price indexes that are more likely representative of price growth (and hence affordability and asset wealth) for all households in a metropolitan area than most indexes which rely on representativeness of the transacted stock. To have broader impact, the paper should address the following questions, described in more detail below. 1. Is it really clear in theory that rent growth should vary by location? 2. Why focus on price growth heterogeneity by location as opposed to, say, structure type?  3. What are empirical examples of failure to account for heterogeneity in price growth that would be solved by the proposed approach?

## Emphasis on Location as Heterogeneity

In a dynamic monocentric city where commuting costs and the cost of developing
a constant quality home at the urban fringe are constant, homes appreciate by
the amount by which fringe homes get worse: the product of commuting cost per
unit of distance at the urban fringe times the expansion of the fringe. As the
authors observe, for this to yield equal percentage 


but the urban fringe expands over time, the appreciation of a home at a given distance from downtown is equal to the improvement 
As the authors observe, in a standard monocentric city model, the derivative of housing rent per unit of hedonic quality with respect to distance from downtown is the ratio of the slope of commuting cost in distance divided by housing consumption. If the cost of commuting and the price of housing at an expanding urban fringe are constant with time, then the appreciation in housing rents for all homes will equal to the slope of the commute cost at the urban fringe times the rate at which the fringe expands. As that rent growth is a constant amount regardless of distance from do
culllkku

The authors observe in equation (4) that if transportation costs are linear in raw distance from downtown, then price gradients in a monocentric city are given by the ratio of that linear cost in distance divided by housing consumption. 


Without constant housing consumption by distance, if appreciation rates are constant in distance, the authors argue that appreciation rates will vary by distance.\footnote{This should be presented as a result, as I understand the paper it is implicit. The result is plausible intuitively but could use a formal proof. If rent per unit of housing is a constant $m$ plus $\theta\left[k-b]$, where $k$ is distance from downtown, and $b$ is the current urban fringe, then the appreciation rate is $\frac{\theta{\dot{b}}}{m+\theta\left[k-b\right]}$, which is not constant in $k$.}


- Result from familiar monocentric city model
  - $\frac{d r(k)}{dk} = -\frac{\frac{d\text{commute cost}}{dk}}{h_{t}}$
  - If I move a bit further, $|h\dot{r}| = |\dot{\text{commute cost}}|$
- Also if constant (construction + option premium) at boundary
  - $d\left[r(k)-r(b(t))\right] = \theta \dot{b} = dr(k) =$ constant
  - Then need constant value in distance
  - Some condition on income and price elasticities
- But linear commute cost?
  - 41st to 61st St in Manhattan vs random mile in the suburbs
- Suppose $\ln p(h,k) = \ln h+\theta\log\frac{b}{k}$, then $g'(k)=0$ (with light conditions)

---


One-year appreciation rates appear almost identical whether census tracts are aggregated based on rooms, value, or units.   generally different across data Verifying that these are empirically grounded concerns using U.S. Census tract level, the paper shows
empirically that home price growth is not generally constant across locations
and that transaction frequency is generally not constant across locations,
either. This implies bias in price growth when the index is intended to capture
appreciation averaged against homes (or rooms or dollar value of homes). The
authors propose an index with weights inverse to transaction frequency across
locations (

price indexes to Laspey that standard metropolitan-level price indexes are likely to offer biased three main contributions. First, it demonstrates that price growth is heterogeneous across space within metropolitan areas. This builds on prior findings, e.g. [@LandvoigtPiazessiSchneider2015], which also documented spatial heterogeneity in price growth. Second, the paper offers a new methodology for aggregating home price subindexes up to the metropolitan level in a way that overcomes bias due to transaction propensity. Third, the authors bring to the reader's attention an older question of whether homes should be weighted equally, by value, or by rooms in constructing a price index.  This last question is highly salient to the "shoebox condo" debate, which has been a major topic of public conversation in Vancouver and Toronto in recent years.

---

## Target for Laspeyres Index: Units

The authors show that the growth in home prices 
The target index is:

$$\frac{\Delta r^*_t}{r_{t-1}} = \frac{\sum_k r_t(k) h_{t-1}(k) / H_{t-1}(k)}{\sum_k r_{t-1}(k) h_{t-1}(k) / H_{t-1}(k)}$$

Aggregating across tracts, the authors propose:

$$\Delta P_{jt} = \sum_{i} W_{ijt} \Delta P_{it}$$

This works if $W_{ijt} = \sum_{k\in i} \frac{h_{t-1}(k)}{H_{t-1}(k)}$ for all $i$.

- What units are $h$ in? Rooms? Value? Units?
- Warrants further discussion
  - Not easy to see use where luxury homes get huge weight
  - Tiny condos getting much cheaper in Toronto helpful?
- Also why are transaction weights non-representative?
  - Table 2 shows weights matter
  - New homes a good example (excluded!)
  - But what data generating process causes this?

---
## My Empirical Work Plan for Discussion

- Show clearly log beats linear price gradient in Vancouver
- Explain that location is not the logical heterogeneity to focus on
  - Or at least that this is overblown: "Unless highly restrictive preference assumptions are imposed, appreciation rates cannot be spatially invariant."
- But not exactly what happened...

---

## Vancouver Condo Prices by Year: Distance Gradients

[Figure: distance gradient residuals]

---

## Vancouver Condo: Fit

- Log-log fits better than level-level in 2014
- Subsequent years:
  - Gradient flattens a lot
  - Action is at outer edge
  - Levels gets to be much better fit
- So $g'(k)\neq 0$ as authors emphasize
- Regressing level P on log distance generally fits best
  - Inverse of old literature
  - But doesn't capture flattening
  - True for both single family and condo
- Box-Cox results for $\lambda$:
  - Approximately 0.6 (2 significant figures) with level (log) on RHS --- similar for condo and single family

---

## Pairwise Correlations Among Vancouver vs Suburban Types

*Type matters more than location?*

|  | VanSingle | VanCondo | FVSingle | FVCondo |
|---|---|---|---|---|
| VanSingle | 1.00 | 0.71 | 0.82 | 0.54 |
| VanCondo | 0.71 | 1.00 | 0.71 | 0.70 |
| FVSingle | 0.82 | 0.71 | 1.00 | 0.71 |
| FVCondo | 0.54 | 0.70 | 0.71 | 1.00 |

- Log index growth 2014--2024: Fraser Valley condo: 10.7%
- Greater Vancouver single: 5.9%
- Story: "flight from quality" after foreign buyer ban?

---

## GFC: Heterogeneity Driven by Subprime Propensity

*Zip code price movements boom/bust (source: Zillow)*

*Red: Flyover, Blue: Coastal, Green: Sand State*

[Figure: zip code price movements]

---

## Transaction Weight: Spatial Smoothing vs Tract Indexes?

- Index = sum over tracts of tract weight times tract price change
- Start from equal tract weights
- Then transaction weight = 1/number of transactions in tract
  - This seems like an invitation to outlier problems
- Suggestion: borrow from kernel estimation literature
- This can extend to multiple dimensions with cell weights
  - Price point (target income/credit constraints)
  - Investor/owner occupier (condo/single family)
  - ...
- Optimal borrowing from neighbors?
  - Probably more precision
  - Bad for certain purposes (e.g. subunit correlations)

---

## One Motivation for Messed Up Weights: Market Hotness

- Winners sell, losers held
- Does this bias up growth? Down volatility?
  - Seems like a worthy exercise for the paper
- Examples:
  - West Vancouver detached pre/post foreign buyer restrictions
  - GFC boom/bust minority neighborhoods

---

## What Is the Question Indexes Answer?

- What decision-maker needs to aggregate to one-type-metro-level?
  - Mark-to-market LTV distribution? No (nonlinearity)
  - Real estate professional? No (comp set...)
  - Portfolio efficiency for investor? No
  - Workout decision for lenders? No
  - Government transfer tax forecast? But transaction weights!
  - CPI (incumbent vs turnover?)
- Has anyone messed up an optimization with wrong index information?

---

## AHS as Source for Index Comparisons?

- 2015--2019 Table 1 shows Atlanta 18% vs 13% per year appreciation
- FHFA per FRED says about 7%
- Washington, D.C. Table 1 says about 2%
- FHFA per FRED says about 3.7%
- Aggregate Zillow zip indexes by metro central/suburbs?
- Strong suggestion: use better data and see if differences are as large

---

## Summary

**Important takeaways from paper:**

- Price growth not constant across submarkets
- Spatial differences in growth stand out
- Aggregation weights depend on target unit of measure
- Transaction indicator unlikely optimal weighting

**Suggestions:**

- Consider whether spatial differentiation warrants focus
- Sane models *can* imply constant appreciation in distance
  - My evidence mixed and odd on gradient
  - Discuss this literature (Mills, McMillen, Coulson, ...) more
- Use better data and work with kernel smoothing techniques
  - Inverse transaction weights likely problematic
- Do more work to convince that large aggregates have value
