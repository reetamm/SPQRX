# Plot Predicted Probability Density Function (PDF) for a Single Observation

Generates a plot of the predicted probability density function (PDF) for
a single observation using a fitted SPQRX model. The x-axis is the
response variable `y`, and the y-axis represents the predicted density.
The plot is restricted to the range between the 1st and 99th predicted
quantiles for better visualization.

## Usage

``` r
eval.plot.pdf(model, x0, npdf_points = 500)
```

## Arguments

- model:

  A fitted SPQRX model object returned by
  [`fit_spqrx()`](https://reetamm.github.io/SPQRX/reference/fit_spqrx.md).

- x0:

  A numeric vector representing the covariate values for the observation
  to plot.

- npdf_points:

  Integer. Number of points to evaluate the PDF along the y-axis.
  Default is 500.

## Value

Invisibly returns `NULL`. Produces a ggplot2 plot of the predicted PDF
for the observation.

## Details

The function computes the predicted PDF over a grid of y-values from the
model's normalized output range. It scales the y-axis based on the
model's predicted 1st and 99th quantiles to focus on the main density
mass.

## Examples

``` r
if (FALSE) { # \dontrun{
# Plot PDF for the 102nd observation in the dataset
eval.plot.pdf(model = fitted_model, x0 = x_training[102, ])
} # }
```
