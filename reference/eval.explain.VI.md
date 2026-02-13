# Quantile-Based Variable Importance for SPQR / SPQRX

Computes variable importance across quantile levels using Quantile
Accumulated Local Effects (QALE). Importance is defined as the standard
deviation of the ALE function across feature intervals for each quantile
level.

## Usage

``` r
eval.explain.VI(model, x, tau = seq(0.1, 0.9, 0.1), var.indexs = c(1, 2))
```

## Arguments

- model:

  A fitted model object returned by
  [`fit_spqrx()`](https://reetamm.github.io/SPQRX/reference/fit_spqrx.md).

- x:

  Matrix or data frame of covariates used for evaluation.

- tau:

  Numeric vector of quantile levels in (0,1).

- var.indexs:

  Integer vector specifying the indices of variables for which
  importance is computed.

## Value

A matrix of variable importance values. Rows correspond to variables and
columns correspond to quantile levels.
