---
title: palettes
subtitle: Methods for Colour Vectors and Colour Palettes
author: Michael McCarthy
date: "2022-10-14"
excerpt: |
  Provides a comprehensive library for colour vectors and colour palettes using a new family of colour classes (`palettes_colour` and `palettes_palette`) that always print as hex codes with colour previews. Capabilities include: formatting, casting and coercion, extraction and updating of components, plotting, colour mixing arithmetic, and colour interpolation.


categories:
- R packages
tags:
- R
links:
- icon: github
  icon_pack: fab
  name: code
  url: https://github.com/mccarthy-m-g/palettes
- icon: file-alt
  icon_pack: fas
  name: docs
  url: https://mccarthy-m-g.github.io/palettes/
- icon: r-project
  icon_pack: fab
  name: CRAN
  url: https://cran.r-project.org/package=palettes
---

<!-- badges: start -->
[![R-CMD-check](https://github.com/mccarthy-m-g/palettes/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/mccarthy-m-g/palettes/actions/workflows/R-CMD-check.yaml)
[![Codecov test
coverage](https://codecov.io/gh/mccarthy-m-g/palettes/branch/main/graph/badge.svg)](https://app.codecov.io/gh/mccarthy-m-g/palettes?branch=main)
[![CRAN
status](https://www.r-pkg.org/badges/version/palettes)](https://CRAN.R-project.org/package=palettes)
<!-- badges: end -->

palettes is an R package for working with colour vectors and colour
palettes. There are three main goals to the palettes package, each
described in a vignette:

-   To provide a new family of colour classes (`palettes_colour` and
    `palettes_palette`) that always print as hex codes with colour
    previews; `vignette("palettes")`.

-   To provide a comprehensive library of methods for working with
    colour vectors and colour palettes, including methods for ggplot2,
    `vignette("ggplot2")`; gt, `vignette("gt")`; biscale,
    `vignette("biscale")`; and other colour packages,
    `vignette("compatibility")`.

-   To make it easy for anyone to make their own colour palette package;
    `vignette("creating-packages")`. Colour palette packages made with
    palettes exist solely for the purpose of distributing colour
    palettes and get access to all the features of palettes for free.

## Installation

Install palettes from [CRAN](https://cran.r-project.org) with:

```r
install.packages("palettes")
```

Install the development version from [GitHub](https://github.com/) or
[R-universe](https://r-universe.dev/) with:

```r
# Install from GitHub
# install.packages("remotes")
remotes::install_github("mccarthy-m-g/palettes")

# Install from R-universe
install.packages('palettes', repos = 'https://mccarthy-m-g.r-universe.dev')
```

## Documentation

See at
[`https://mccarthy-m-g.github.io/palettes/`](https://mccarthy-m-g.github.io/palettes/reference/index.html)
and also in the installed package: `help(package = "palettes")`.

## License

MIT © Michael McCarthy
