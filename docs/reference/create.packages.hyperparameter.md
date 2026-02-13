# Create SPQRX hyperparameter specification

Constructs a structured hyperparameter list for use with
[`fit.spqrx()`](https://reetamm.github.io/SPQRX/reference/fit.spqrx.md).
This function allows users to explicitly control tail modeling and
training-related parameters.

## Usage

``` r
create.packages.hyperparameter(
  p_a = 0.9,
  p_b = 0.99,
  c1 = 25,
  c2 = 5,
  epochs = 200,
  batch_size = 300,
  activation = "relu"
)
```

## Arguments

- p_a:

  Lower tail probability threshold.

- p_b:

  Upper tail probability threshold.

- c1:

  Tail regularization parameter controlling density stability.

- c2:

  Tail penalty parameter.

- batch_size:

  Mini-batch size used during training.

## Value

A list containing hyperparameters that can be passed to
[`fit.spqrx()`](https://reetamm.github.io/SPQRX/reference/fit.spqrx.md).

## Examples

``` r
hp <- create.package.hyperparameter(
  p_a = 0.1,
  p_b = 0.9,
  c1 = 50,
  c2 = 10,
  batch_size = 500
)
#> Error in create.package.hyperparameter(p_a = 0.1, p_b = 0.9, c1 = 50,     c2 = 10, batch_size = 500): could not find function "create.package.hyperparameter"

model <- fit.spqrx(
  input_dim = 5,
  hidden_dim = c(64, 32),
  n.knots = 10,
  x_training = X_train,
  x_validation = X_val,
  y_training = y_train,
  y_validation = y_val,
  hyperparameter = hp
)
#> Error in fit.spqrx(input_dim = 5, hidden_dim = c(64, 32), n.knots = 10,     x_training = X_train, x_validation = X_val, y_training = y_train,     y_validation = y_val, hyperparameter = hp): could not find function "fit.spqrx"
```
