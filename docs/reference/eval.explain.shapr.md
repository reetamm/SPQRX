# Shapley Explanations for SPQR / SPQRX Models using shapr

Computes Shapley values for SPQR or SPQRX model predictions using the
`shapr` package. Supports quantile (QF), cumulative distribution (CDF),
and density (PDF) explanations.

## Usage

``` r
eval.explain.shapr(
  model,
  x_training,
  x_explain,
  y_training,
  y_explain,
  type = "QF",
  tau = 0.5,
  shapley_method = "empirical",
  variable_names = NULL,
  original_output = FALSE
)
```

## Arguments

- model:

  A fitted model object returned by
  [`fit_spqrx()`](https://reetamm.github.io/SPQRX/reference/fit_spqrx.md).

- x_training:

  Matrix or data frame of training covariates.

- x_explain:

  Matrix or data frame of observations to explain.

- y_training:

  Numeric vector of training responses.

- y_explain:

  Numeric vector of response values used for CDF or PDF explanations.

- type:

  Character string specifying explanation target: `"QF"`, `"CDF"`, or
  `"PDF"`.

- tau:

  Numeric quantile level in (0,1) used when `type = "QF"`.

- shapley_method:

  Character string specifying the `shapr` estimation approach (e.g.,
  `"empirical"`).

- variable_names:

  Optional character vector of variable names. If `NULL`, default names
  are assigned.

- original_output:

  Logical. If TRUE, returns the full `shapr` explanation object. If
  FALSE (default), returns a data frame of Shapley values.

## Value

If `original_output = FALSE`, a data frame of Shapley values. Otherwise,
the full `shapr` explanation object.
