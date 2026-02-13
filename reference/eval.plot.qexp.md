# Exponential Q-Q Plot for SPQR / SPQRX Model

Produces an exponential Q-Q plot using model-based CDF values. The
function evaluates the fitted conditional distribution and compares
transformed probabilities to the theoretical exponential distribution.

## Usage

``` r
eval.plot.qexp(model, x, y, pre_normalize = FALSE)
```

## Arguments

- model:

  A fitted model object returned by
  [`fit_spqrx()`](https://reetamm.github.io/SPQRX/reference/fit_spqrx.md).

- x:

  Matrix or data frame of covariates.

- y:

  Numeric vector of observed response values.

- pre_normalize:

  Logical. If FALSE (default), response values are normalized using
  stored model parameters.

## Value

Invisibly returns `NULL`. Produces a base R Q-Q plot.
