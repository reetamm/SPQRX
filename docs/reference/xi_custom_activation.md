# Custom activation function for SPQRX xi parameter

Internal activation function used in the SPQRX neural network
architecture to constrain the xi parameter to the interval (0, 0.5).

## Usage

``` r
xi_custom_activation(x)
```

## Arguments

- x:

  A tensor input from the previous neural network layer.

## Value

A tensor with values constrained to (0, 0.5).

## Details

This function applies a sigmoid transformation and rescales the output
by 0.5. For the zeta parameter.
