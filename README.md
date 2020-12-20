# **`qfwr`**

The goal of **`qfwr`** is to provide some tools for my course _"Quantitative Finance with R"_ offered in Department of Finance, School of Management, Xiamen University, PRC. I hope it will facilitate and enhance our teaching and learning experience.

## Installation

You can install this version of **`qfwr`** from [github](https://github.com/yyzeng/qfwr) with: 

``` r
# install.packages("devtools")
devtools::install_github("yyzeng/qfwr")

```

## Example

Currently there are only a handful of functions in **`qfwr`**: `qfwr_ls()`, 
`qfwr_ex()`, `qfwr_lab()` and `qfwr_key()` and a basic example will show:

``` r
## list all interactive exercises in package *qfwr*
qfwr_ls()

## run an interactive exercise
qfwr_ex("L04")

## run a hands-on lab exercise
qfwr_lab("L04")

## show answer key for lab exercise
qfwr_key("L04", "ex1")

```

Of course, you can start `qfwr`'s interactive exercise in RStudio's **Tutorial** panel directly once installed.
