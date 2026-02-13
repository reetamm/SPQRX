# Construct an SPQRX model object

Internal constructor used to package a trained SPQR/SPQRX model together
with metadata required for prediction and explainability methods.

## Usage

``` r
create.package.model(
  model,
  n.knots,
  knots,
  hyperparameter = NULL,
  normalizer = NULL,
  variable_names = NULL,
  spqrx = TRUE
)
```

## Arguments

- model:

  A trained keras model object.

- n.knots:

  Integer. Number of spline knots.

- knots:

  Numeric vector of knot locations.

- hyperparameter:

  Optional list containing model hyperparameters (e.g., p_a, p_b, c1,
  c2).

- normalizer:

  A list containing normalization parameters.

- variable_names:

  Optional character vector of covariate names.

- spqrx:

  Logical. TRUE if heavy-tail SPQRX model.

## Value

An object of class \`"spqrx_model"\`.

## Details

This function should not be called directly by users.
