
<!-- README.md is generated from README.Rmd. Please edit that file -->

# cmap

<!-- badges: start -->
<!-- badges: end -->

The goal of cmap is to provide colours from matplotlib.

## Installation

You can install the development version of cmap like so:

``` r
pak::pkg_install(file.path("hypertidy", "cmap"))
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(cmap)
pal <- cm_pal("gnuplot")
image(volcano, col = pal(100, alpha = 0.5))
```

<img src="man/figures/README-example-1.png" width="100%" />

``` r

par(mfrow = n2mfrow(4))
for (i in 1:4) {
image(volcano, col = cm_pal(nm <- sample(cm_names(), 1))(64), main = nm)
}
```

<img src="man/figures/README-example-2.png" width="100%" />

## Code of Conduct

Please note that the cmap project is released with a [Contributor Code
of
Conduct](https://contributor-covenant.org/version/2/1/CODE_OF_CONDUCT.html).
By contributing to this project, you agree to abide by its terms.
