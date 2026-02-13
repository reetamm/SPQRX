# Internal SPQRX Training Routine

Internal function used by
[`fit.spqrx()`](https://reetamm.github.io/SPQRX/reference/fit.spqrx.md)
to train the SPQRX model. Handles optional pre-training of the spline
component followed by heavy-tail (GPD) optimization.

## Usage

``` r
in.fit.spqrx(
  input_dim,
  hidden_dim,
  n.knots,
  knots,
  x_training,
  x_validation,
  y_training,
  y_validation,
  m_basis_training,
  m_basis_validation,
  i_basis_training,
  i_basis_validation,
  y.seq,
  F.basis.seq,
  f.basis.seq,
  hyperparameter,
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

- knots:

  Numeric vector of spline knot locations.

- x_training:

  Matrix of training covariates.

- x_validation:

  Matrix of validation covariates.

- y_training:

  Numeric vector of training responses (normalized).

- y_validation:

  Numeric vector of validation responses (normalized).

- m_basis_training:

  Matrix of spline basis evaluations for training data.

- m_basis_validation:

  Matrix of spline basis evaluations for validation data.

- i_basis_training:

  Matrix of integrated spline basis evaluations (training).

- i_basis_validation:

  Matrix of integrated spline basis evaluations (validation).

- y.seq:

  Tensor sequence over \[0,1\] used for density and quantile
  computation.

- F.basis.seq:

  Tensor of integrated spline basis evaluated over `y.seq`.

- f.basis.seq:

  Tensor of spline basis evaluated over `y.seq`.

- hyperparameter:

  List containing training configuration and tail parameters (e.g.,
  epochs, batch_size, activation, p_a, p_b, c1, c2).

- pre_train:

  Logical. If TRUE, performs initial SPQR pre-training before heavy-tail
  optimization.

## Value

A trained keras model object representing the SPQRX model.
