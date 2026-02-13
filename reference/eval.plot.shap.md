# Plot SHAP Values

Generates a summary plot of SHAP values for a given model across
features using results from
[`eval.explain.shapr()`](https://reetamm.github.io/SPQRX/reference/eval.explain.shapr.md).

## Usage

``` r
eval.plot.shap(
  model,
  x_training,
  x_explain,
  y_training,
  y_explain,
  tau = 0.5,
  shapley_method = "empirical"
)
```

## Arguments

- model:

  A fitted model object returned by
  [`fit_spqrx()`](https://reetamm.github.io/SPQRX/reference/fit_spqrx.md).

- x_training:

  Matrix or data frame used to train the model.

- x_explain:

  Matrix or data frame of covariates to explain.

- y_training:

  Vector of responses corresponding to `x_training`.

- y_explain:

  Vector of responses corresponding to `x_explain`.

- tau:

  Numeric or vector of quantiles (default 0.5) for QF predictions.

- shapley_method:

  Character, the SHAP approximation method (default 'empirical').

## Value

Invisibly returns `NULL`. Produces a ggplot2 plot of SHAP feature
contributions.
