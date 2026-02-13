# Predict from SPQR / SPQRX Model

Generates predictions from a fitted SPQR or SPQRX model object. Supports
cumulative distribution (CDF), probability density (PDF), and quantile
function (QF) evaluation.

## Usage

``` r
predict_spqrx(
  object,
  x,
  y = NULL,
  type = "QF",
  tau = 0.5,
  normalize_input = FALSE,
  normalize_output = TRUE
)
```

## Arguments

- object:

  A fitted model object returned by
  [`fit_spqrx()`](https://reetamm.github.io/SPQRX/reference/fit_spqrx.md),
  [`fit.spqrx()`](https://reetamm.github.io/SPQRX/reference/fit.spqrx.md),
  or
  [`fit.spqr()`](https://reetamm.github.io/SPQRX/reference/fit.spqr.md).

- x:

  Matrix or data frame of covariates for prediction.

- y:

  Optional numeric vector of response values. Required for
  `type = "CDF"` and `type = "PDF"`.

- type:

  Character string specifying prediction type: `"QF"` (quantile
  function), `"CDF"`, or `"PDF"`.

- tau:

  Numeric value or vector of quantile levels in (0,1). Used when
  `type = "QF"`.

- normalize_input:

  Logical. If FALSE (default), covariates and response values are
  normalized using stored model parameters.

- normalize_output:

  Logical. If TRUE (default), quantile predictions are transformed back
  to the original response scale.

## Value

- For `type = "QF"`: Matrix of predicted quantiles.

- For `type = "CDF"`: Matrix or vector of cumulative probabilities.

- For `type = "PDF"`: Matrix or vector of density values.
