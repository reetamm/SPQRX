# Fit Base SPQR Neural Network (Internal Training Routine)

Internal training routine for the baseline SPQR (Spline-based
Probabilistic Quantile Regression) model. This function builds the
neural network architecture, compiles it with the SPQR negative
log-likelihood loss, and performs supervised training using precomputed
spline basis matrices.

## Usage

``` r
in.fit.spqr(
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
  hyperparameter = NULL
)
```

## Arguments

- input_dim:

  Integer. Number of covariates (input features).

- hidden_dim:

  Integer vector. Number of units in each hidden layer.

- n.knots:

  Integer. Total number of spline basis functions.

- knots:

  Numeric vector of spline knot locations.

- x_training:

  Numeric matrix of training covariates.

- x_validation:

  Numeric matrix of validation covariates.

- y_training:

  Numeric vector or matrix of training responses.

- y_validation:

  Numeric vector or matrix of validation responses.

- m_basis_training:

  Numeric matrix of spline basis evaluations for the training responses.

- m_basis_validation:

  Numeric matrix of spline basis evaluations for the validation
  responses.

- i_basis_training:

  Numeric matrix of integrated spline basis evaluations for the training
  responses.

- i_basis_validation:

  Numeric matrix of integrated spline basis evaluations for the
  validation responses.

- hyperparameter:

  List. Model training configuration created by
  [`create.packages.hyperparameter()`](https://reetamm.github.io/SPQRX/reference/create.packages.hyperparameter.md),
  containing elements such as \`epochs\`, \`batch_size\`, and
  \`activation\`.

## Value

A trained `keras_model` object corresponding to the fitted SPQR
architecture.

## Details

This function assumes that:

- Covariates and responses have already been preprocessed.

- Spline basis matrices (\`m_basis\_\*\`, \`i_basis\_\*\`) have already
  been constructed.

- Hyperparameters are supplied via a structured list.

It is not intended to be called directly by end users.

The model is trained using the `nloglik_loss_SPQR` loss function and the
Adam optimizer. Early stopping is applied based on validation loss, and
the best-performing weights are saved during training.

## See also

[`fit.spqr`](https://reetamm.github.io/SPQRX/reference/fit.spqr.md),
[`SPQRX`](https://reetamm.github.io/SPQRX/reference/SPQRX.md)
