---
title: "Discussion of Broxterman, Larson, Yezer: 'Characteristics of a Sufficient Statistic to Measure City Housing Prices'"
author: "Thomas Davidoff, Sauder School of Business, University of British Columbia"
date: "April 2026"
bibliography: broxtermanLarsonYezer.bib
output: word_document
---

## Paper Contributions

This paper has three main contributions. First, it demonstrates that price growth is heterogeneous across space within metropolitan areas. This builds on prior findings, e.g. [@LandvoigtPiazessiSchneider2015], which also documented spatial heterogeneity in price growth. Second, the paper offers a new methodology for aggregating home price subindexes up to the metropolitan level in a way that overcomes bias due to transaction propensity. Third, the authors bring to the reader's attention an older question of whether homes should be weighted equally, by value, or by rooms in constructing a price index.  This last question is highly salient to the "shoebox condo" debate, which has been a major topic of public conversation in Vancouver and Toronto in recent years.

---

## Target for Laspeyres Index: Units

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

## Emphasis on Location as Heterogeneity

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
