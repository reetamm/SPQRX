# Build SPQRX Neural Network Architecture

Constructs the Keras model architecture for the heavy-tail SPQRX
(Spline-based Probabilistic Quantile Regression) model.

## Usage

``` r
SPQRX(input_dim, hidden_dim, k, activation = "relu")
```

## Arguments

- input_dim:

  Integer. Dimension of the covariate input.

- hidden_dim:

  Integer vector. Number of units in each hidden layer.

- k:

  Integer. Number of spline basis functions.

- activation:

  Provide the activation function for the hidden layers.

## Value

A `keras_model` object representing the SPQRX architecture.

## Details

The network maps covariates to spline mixture probabilities and a tail
parameter \\\xi\\. The model output concatenates:

- Mixture probabilities over spline basis functions

- Tail parameter \\\xi\\

- Observed response values

- Spline basis evaluations

This function defines only the network architecture. Model compilation,
training, and loss specification are handled separately.
