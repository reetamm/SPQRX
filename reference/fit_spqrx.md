# Unified SPQR / SPQRX Model Fitting Interface

High-level wrapper for fitting either the SPQR or SPQRX model. This
function selects the appropriate fitting routine based on the `spqrx`
flag and optionally performs pre-training for the SPQRX model.

## Usage

``` r
fit_spqrx(
  input_dim,
  hidden_dim,
  n.knots,
  x_training,
  x_validation,
  y_training,
  y_validation,
  hyperparameter = NULL,
  package.it = TRUE,
  pre_normalize = FALSE,
  spqrx = TRUE,
  pre_train = TRUE
)
```

## Arguments

- input_dim:

  Integer. Number of input covariates.

- hidden_dim:

  Integer or vector. Hidden layer configuration.

- n.knots:

  Integer. Number of spline knots.

- x_training:

  Matrix or data frame of training covariates.

- x_validation:

  Matrix or data frame of validation covariates.

- y_training:

  Numeric vector of training responses.

- y_validation:

  Numeric vector of validation responses.

- hyperparameter:

  List of hyperparameters. If `NULL`, default values are generated via
  [`create.packages.hyperparameter()`](https://reetamm.github.io/SPQRX/reference/create.packages.hyperparameter.md).

- package.it:

  Logical. Passed to lower-level fitting routines to determine whether
  the model should be returned as a packaged object. If false, passes
  back a trained keras object.

- pre_normalize:

  Logical. Indicates whether prediction functions should assume
  pre-normalized inputs.

- spqrx:

  Logical. If TRUE (default), fits the SPQRX model. If FALSE, fits the
  baseline SPQR model.

- pre_train:

  Logical. If TRUE, performs pre-training when fitting the SPQRX model.

## Value

A fitted SPQR or SPQRX model object, depending on the `spqrx` flag.
