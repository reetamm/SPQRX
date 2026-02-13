# Fit SPQR Model

Fits the baseline SPQR (Spline-based Probabilistic Quantile Regression)
model using a neural network parameterization of spline mixture weights.

## Usage

``` r
fit.spqr(
  input_dim,
  hidden_dim,
  n.knots,
  x_training,
  x_validation,
  y_training,
  y_validation,
  hyperparameter = NULL,
  pre_normalize = FALSE,
  package.it = TRUE
)
```

## Arguments

- input_dim:

  Integer. Number of covariates (input features).

- hidden_dim:

  Integer vector specifying hidden layer sizes.

- n.knots:

  Integer. Total number of spline basis functions.

- x_training:

  Numeric matrix of training covariates.

- x_validation:

  Numeric matrix of validation covariates.

- y_training:

  Numeric vector or matrix of training responses.

- y_validation:

  Numeric vector or matrix of validation responses.

- hyperparameter:

  List created by
  [`create.packages.hyperparameter()`](https://reetamm.github.io/SPQRX/reference/create.packages.hyperparameter.md)
  specifying training configuration (e.g., epochs, batch size).

- pre_normalize:

  Logical. Included for API consistency. Currently does not alter
  preprocessing behavior.

- package.it:

  Logical. If TRUE (default), returns a structured `"spqrx_model"`
  object. If FALSE, returns the raw `keras_model`.

## Value

If `package.it = TRUE`, returns an object of class `"spqrx_model"`
containing:

- The trained keras model

- Spline knot locations

- Normalization parameters

- Variable names (if available)

Otherwise, returns a trained `keras_model` object.

## Details

This function performs:

- Response rescaling to the unit interval

- Covariate standardization using combined training/validation
  statistics

- Construction of spline basis and integrated basis matrices

- Neural network training via
  [`in.fit.spqr()`](https://reetamm.github.io/SPQRX/reference/in.fit.spqr.md)

The fitted model can optionally be returned as a packaged
`"spqrx_model"` object containing normalization metadata and spline
information for downstream prediction and explainability.

The response variable is internally rescaled to the unit interval prior
to spline construction. Covariates are standardized using mean and
standard deviation computed from the combined training and validation
data.

## See also

[`fit_spqrx`](https://reetamm.github.io/SPQRX/reference/fit_spqrx.md),
[`predict_spqrx`](https://reetamm.github.io/SPQRX/reference/predict_spqrx.md)
