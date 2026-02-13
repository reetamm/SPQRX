# Construct normalization metadata

Internal helper used to store normalization parameters computed during
model fitting.

## Usage

``` r
create.package.normalize.list(x_std, x_mean, y_max, y_min)
```

## Arguments

- x_std:

  Numeric vector of feature standard deviations.

- x_mean:

  Numeric vector of feature means.

- y_max:

  Maximum value of the response variable.

- y_min:

  Minimum value of the response variable.

## Value

A list containing normalization parameters.

## Details

This function packages the scaling statistics required to normalize
inputs and rescale outputs during prediction.
