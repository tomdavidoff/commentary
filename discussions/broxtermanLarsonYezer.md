---
title: 'Discussion of Broxterman, Larson, Yezer: "Characteristics of a Sufficient Statistic to Measure City Housing Prices"'
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

In a stanard dynamic monocentric city where commuting costs and the cost of
developing a constant quality home at the urban fringe are constant, homes
appreciate by the amount by which fringe homes get worse: the product of
commuting cost per unit of distance at the urban fringe times the expansion of
the fringe. If boundary ($b(t)$) homes always cost $k$ to rent, then the cost
of a home at distance $r$ is $x
= h(r)\left[k+\int_{r}^{b(t)}\frac{\theta}{h(z)}dz\right]$, so $\frac{dx}{dt}
= h(r)\theta\frac{\dot{b}}{h(b)}$, and $\frac{\frac{dx}{dt}}{x}
= \frac{\theta\frac{\dot{b}}{h(z)}}{h(r)\left[k+\theta\int_{r}^{b(t)}\frac{1}{h(z)}dz\right]}$.
As the authors note, this will only be a constant if the denominator is
constant in $r$, e.g. if the income elasticity of housing demand is zero and
the price elasticity is minus one, an unlikely combination.

That we should not expect equal appreciation across locations given this result in a standard setting motivates the empirical analysis that shows non-constant appreciation across locations.

### Price and distance in Vancouver

There is a plausible case, however, for constant appreciation across locations. Recognizing that commuting speeds likely slow down as congestion increases near the city center, concave commuting cost as a function of distance is a reasonable modeling alternative. In \textcite{CosmanDavidoffWilliams}, rents are derived in a special case as $\log x(r) = \log h(r) + \log k + \theta\log\frac{b}{r}$, so $\frac{dx}{dt} = \theta\frac{\dot{b}}{b}x(r)$, and appreciation is constant across locations and equal to the rate of expansion of the urban fringe times the elasticity of commute cost with respect to distance. 

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

### Pairwise Correlations Among Vancouver vs Suburban Types

Available evidence suggests that price point and property type may be more important sources of variation in appreciation than  correlations as much as location within markets

Table @tab:correlations shows correlations in 1-year price changes among single family and condo properties in Greater Vancouver and Fraser Valley markets, with the latter inclusive of the large suburb of Surrey as well as more exurban and rural locations. The correlations between the two markets' single family (.82) and condo (.70) are on average greater than cross-type correlations for within Greater Vancouver (.71) and the Fraser Valley (also .71). Over the 2014-2024 decade, Fraser Valley condos appreciated at an annual rate of 10.7\%, versus 5.9\% for Greater Vancouver single family homes. The intermediately priced Greater Vancouver condos and Fraser Value single family homes had intermediate appreciation rates.


[Correlations among property types in 1-year price changes, data from Canadian Real Estate Association HPI]{#tab:correlations}

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
