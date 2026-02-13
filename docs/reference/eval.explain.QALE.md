# Quantile Accumulated Local Effects (QALE)

Computes Quantile Accumulated Local Effects (QALE) for a selected
covariate using a fitted SPQR or SPQRX model. The function evaluates
changes in predicted quantiles across empirical feature intervals and
accumulates the averaged local effects.

## Usage

``` r
eval.explain.QALE(model, x, tau = seq(0.1, 0.9, 0.1), var.index = c(1))
```

## Arguments

- model:

  A fitted model object returned by
  [`fit_spqrx()`](https://reetamm.github.io/SPQRX/reference/fit_spqrx.md).

- x:

  Matrix or data frame of covariates.

- tau:

  Numeric vector of quantile levels in (0,1).

- var.index:

  Integer specifying the column index of the covariate to evaluate.

## Value

A list containing:

- `x`: Interval boundary points for the selected feature.

- `ALE`: Matrix of accumulated local effects across quantiles.
