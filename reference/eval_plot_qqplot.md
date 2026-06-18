# QQ-Plot of Conditional CDF Values for SPQRx Model

Generates a quantile–quantile (QQ) plot comparing the empirical
conditional CDF values from a fitted SPQRx model to the theoretical
Uniform(0,1) distribution. If the model is well-calibrated, the points
should lie approximately along the 45-degree line.

## Usage

``` r
eval_plot_qqplot(model, x, y)
```

## Arguments

- model:

  A fitted SPQR or SPQRx model object.

- x:

  A matrix or data frame of covariates used for prediction.

- y:

  A numeric response vector corresponding to `x`.

## Value

A `ggplot2` object representing the QQ-plot.

## Details

The function computes conditional CDF values using
`predict_spqrx(..., type = "CDF")` and compares the sorted empirical CDF
values against theoretical Uniform(0,1) quantiles.

This diagnostic assesses overall distributional calibration. Deviations
from the 45-degree line indicate model misspecification or poor fit in
certain regions of the conditional distribution.

## Examples

``` r
if (FALSE) { # \dontrun{
fit <- spqrx(...)
p <- eval.plot.qqplot(fit, x_test, y_test)
print(p)
} # }
```
