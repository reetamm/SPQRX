# LIME Explanations for SPQR / SPQRX Models

Computes local feature attributions using the `lime` package for
quantile predictions from a fitted SPQR or SPQRX model. Explanations are
generated on standardized covariates using the stored normalization
parameters.

## Usage

``` r
eval.explain.lime(
  model,
  x_training,
  x_explain,
  tau = 0.5,
  n_permutations = 5000,
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

- tau:

  Numeric quantile level in (0,1) for quantile prediction.

- n_permutations:

  Integer. Number of permutations used by
  [`lime::explain()`](https://lime.data-imaginist.com/reference/explain.html).

- original_output:

  Logical. If TRUE, returns the full LIME explanation object. If FALSE
  (default), returns a reshaped feature-weight table.

## Value

If `original_output = FALSE`, a data frame where rows correspond to
explained cases and columns correspond to feature weights. Otherwise,
the full `lime` explanation object.
