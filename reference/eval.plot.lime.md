# Plot LIME Explanation Summary

Generates a summary plot of LIME (Local Interpretable Model-agnostic
Explanations) feature contributions for one or more observations. The
plot displays feature contributions on the x-axis and features ordered
by mean absolute contribution on the y-axis. Points are colored by the
corresponding feature values.

## Usage

``` r
eval.plot.lime(model, x_training, x_explain, tau = 0.5)
```

## Arguments

- model:

  A fitted model object returned by
  [`fit_spqrx()`](https://reetamm.github.io/SPQRX/reference/fit_spqrx.md).

- x_training:

  Matrix or data frame of training covariates used to build the LIME
  explainer.

- x_explain:

  Matrix, data frame, or numeric vector representing the observation(s)
  to explain.

- tau:

  Numeric. Quantile level used for prediction when generating LIME
  explanations. Default is `0.5`.

## Value

Invisibly returns a `ggplot` object showing the LIME contribution
summary.
