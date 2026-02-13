# Fit SPQRX Model

Trains a Semi-Parametric Quantile Regression with eXtreme modeling
(SPQRX) neural network using training and validation datasets. The
function standardizes covariates, normalizes the response variable to
\[0,1\], constructs spline basis representations, and fits the SPQRX
architecture.

## Usage

``` r
fit.spqrx(
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
  pre_train = TRUE
)
```

## Arguments

- input_dim:

  Integer. Number of input covariates.

- hidden_dim:

  Integer or vector. Number of hidden units in the network.

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

  List. Optional hyperparameters including tail parameters (e.g., p_a,
  p_b, c1, c2).

- package.it:

  Logical. If TRUE, returns a packaged model object with normalization
  and knot information.

- pre_normalize:

  Logical. Indicates whether prediction functions should assume
  pre-normalized inputs.

- pre_train:

  Logical. If TRUE, performs pre-training of the heavy-tail component.

## Value

A fitted SPQRX model object. If \`package.it = TRUE\`, returns a
packaged model including normalization parameters, knots, and metadata.
