# Preprocess data for SPQR/SPQRX modeling

Splits data into training, validation, and testing sets and optionally
applies normalization to predictors and response.

## Usage

``` r
preprocessing.data(
  x,
  y,
  n.knots,
  testing_ratio = 0.1,
  valid_ratio = 0.1,
  normalize = FALSE
)
```

## Arguments

- x:

  Numeric matrix of covariates.

- y:

  Numeric vector or matrix of response values.

- n.knots:

  Integer. Number of spline knots.

- testing_ratio:

  Proportion of data allocated to testing.

- valid_ratio:

  Proportion of training data allocated to validation.

- normalize:

  Logical. If TRUE, standardizes predictors and rescales response.

## Value

A list containing:

- Training, validation, and testing splits

- Spline knot locations

- Normalization metadata (if applicable)

## Details

When normalization is enabled, predictors are standardized using
training-set statistics, and the response is rescaled to the unit
interval.
