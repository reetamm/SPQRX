# Accumulated Local Effects (ALE) for SPQR / SPQRX Models

Computes first-order Accumulated Local Effects (ALE) for a selected
covariate using a fitted SPQR or SPQRX model. The ALE function measures
the average change in the predicted quantile as the feature varies
across empirical intervals.

## Usage

``` r
eval.explain.ALE(model, x, tau = 0.5, k = NULL, knots = NULL, var.index = c(1))
```

## Arguments

- model:

  A fitted model object returned by
  [`fit_spqrx()`](https://reetamm.github.io/SPQRX/reference/fit_spqrx.md).

- x:

  Matrix or data frame of covariates used to compute ALE.

- tau:

  Numeric vector of quantile levels in (0,1).

- k:

  Integer. Number of intervals used to partition the selected feature.
  If `NULL`, it is determined from the spline structure.

- knots:

  Numeric vector of spline knots. If `NULL`, extracted from the fitted
  model.

- var.index:

  Integer vector specifying the column index of the covariate for which
  ALE is computed.

## Value

A list containing:

- `x`: The interval boundary points used for the feature.

- `ALE`: Matrix of accumulated local effects. Rows correspond to feature
  intervals and columns correspond to quantile levels.
