# Plot Quantile Variable Importance (QVI)

This function generates a line plot of variable effects across quantiles
using the Quantile Variable Importance (QVI) calculated from a fitted
SPQRX model.

## Usage

``` r
eval.plot.QVI(
  model,
  x,
  var.indexs,
  lower_quantile = 0.1,
  upper_quantile = 0.9,
  quantile_increment = 0.1
)
```

## Arguments

- model:

  A fitted SPQRX or SPQRx model object.

- x:

  A data frame or matrix of covariates used for evaluation.

- var.indexs:

  An integer vector specifying which covariates to plot.

- lower_quantile:

  Numeric. Lower quantile bound (default 0.1).

- upper_quantile:

  Numeric. Upper quantile bound (default 0.9).

- quantile_increment:

  Numeric. Step size between quantiles (default 0.1).

## Value

A plot is displayed. No object is returned.

## Details

The function computes Quantile Variable Importance (QVI) for the
selected covariates and visualizes them using a line plot. Each line
represents a covariate, and the x-axis corresponds to quantiles (in
percentages).

## Examples

``` r
if (FALSE) { # \dontrun{
eval.plot.QVI(model = fitted_model, x = x_test, var.indexs = c(1,2,3))
} # }
```
