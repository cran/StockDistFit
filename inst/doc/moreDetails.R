## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  eval = FALSE
)

## ----setup--------------------------------------------------------------------
#  library(StockDistFit)

## -----------------------------------------------------------------------------
#  asset_data <- asset_loader(data_path, assets, price_col)
#  

## -----------------------------------------------------------------------------
#  asset_data <- asset_loader("path/to/data/folder", c("AAPL", "MSFT", "AMZN"), "Close")
#  

## -----------------------------------------------------------------------------
#  # Compute weekly returns of an asset vector
#  asset_returns_xts <- xts(c(0.05, -0.03, 0.02, -0.01, 0.04, -0.02, 0.01),
#                           order.by = as.Date(c("2023-05-01", "2023-05-02", "2023-05-03",
#                                               "2023-05-04", "2023-05-05", "2023-05-06",
#                                               "2023-05-07")))
#  weekly_return(asset_returns_xts)

## -----------------------------------------------------------------------------
#  # Compute monthly returns of an asset vector
#  asset_returns_xts <- xts(c(0.05, -0.03, 0.02, -0.01, 0.04, -0.02, 0.01),
#                           order.by = as.Date(c("2023-05-01", "2023-05-02", "2023-05-03",
#                                               "2023-05-04", "2023-05-05", "2023-05-06",
#                                               "2023-05-07")))
#  monthly_return(asset_returns_xts)

## -----------------------------------------------------------------------------
#  # Compute annual returns of an asset vector
#  asset_returns_xts <- xts(c(0.05, -0.03, 0.02, -0.01, 0.04, -0.02, 0.01),
#                           order.by = as.Date(c("2023-05-01", "2023-05-02", "2023-05-03",
#                                               "2023-05-04", "2023-05-05", "2023-05-06",
#                                               "2023-05-07")))
#  annual_return(asset_returns_xts)

## -----------------------------------------------------------------------------
#  data.cumret(df_ret, initial_eq)
#  

## -----------------------------------------------------------------------------
#  # Compute cumulative returns of an asset vector
#  library(quantmod)
#  asset_returns_xts <- xts(c(0.05, -0.03, 0.02, -0.01, 0.04, -0.02, 0.01),
#                           order.by = as.Date(c("2023-05-01", "2023-05-02", "2023-05-03",
#                                                 "2023-05-04", "2023-05-05", "2023-05-06",
#                                                 "2023-05-07")))
#  data.cumret(asset_returns_xts, initial_eq = 100)
#  

## -----------------------------------------------------------------------------
#  norm_fit(vec)

## -----------------------------------------------------------------------------
#  # Fit a normal distribution to a vector of returns
#  df <- asset_loader("path/to/data/folder",  ("AAPL"), "Close")
#  returns <- weekly_return(df$AAPL)
#  norm_fit(returns)
#  

## -----------------------------------------------------------------------------
#  t_fit(vec)

## -----------------------------------------------------------------------------
#  # Fit a Student's t distribution to a vector of returns
#  df <- asset_loader("path/to/data/folder",  ("AAPL"), "Close")
#  returns <- weekly_return(df$AAPL)
#  t_fit(returns)

## -----------------------------------------------------------------------------
#  cauchy_fit(vec)

## -----------------------------------------------------------------------------
#  # Fit a  Cauchy distribution to a vector of returns
#  df <- asset_loader("path/to/data/folder",  ("AAPL"), "Close")
#  returns <- weekly_return(df$AAPL)
#  cauchy_fit(returns)

## -----------------------------------------------------------------------------
#  ghd_fit(vec)

## -----------------------------------------------------------------------------
#  stock_prices <- c(10, 11, 12, 13, 14)
#  returns <- diff(log(stock_prices))
#  ghd_fit(returns)
#  

## -----------------------------------------------------------------------------
#  hd_fit(vec)

## -----------------------------------------------------------------------------
#  stock_prices <- c(10, 11, 12, 13, 14)
#  returns <- diff(log(stock_prices))
#  hd_fit(returns)
#  

## -----------------------------------------------------------------------------
#  sym.ghd_fit(vec)
#  

## -----------------------------------------------------------------------------
#  stock_prices <- c(10, 11, 12, 13, 14)
#  returns <- diff(log(stock_prices))
#  sym.ghd_fit(returns)
#  

## -----------------------------------------------------------------------------
#  sym.hd_fit(vec)
#  

## -----------------------------------------------------------------------------
#  stock_prices <- c(10, 11, 12, 13, 14)
#  returns <- diff(log(stock_prices))
#  sym.hd_fit(returns)
#  

## -----------------------------------------------------------------------------
#  vg_fit(vec)
#  

## -----------------------------------------------------------------------------
#  stock_prices <- c(10, 11, 12, 13, 14)
#  returns <- diff(log(stock_prices))
#  vg_fit(returns)
#  

## -----------------------------------------------------------------------------
#  sym.vg_fit(vec)
#  

## -----------------------------------------------------------------------------
#  stock_prices <- c(10, 11, 12, 13, 14)
#  returns <- diff(log(stock_prices))
#  sym.vg_fit(returns)
#  

## -----------------------------------------------------------------------------
#  nig_fit(vec)

## -----------------------------------------------------------------------------
#  
#  # Create some sample data
#  stock_prices <- c(10, 11, 12, 13, 14)
#  returns <- diff(log(stock_prices))
#  
#  # Fit the NIG distribution to the data
#  nig_fit(returns)
#  

## -----------------------------------------------------------------------------
#  ged_fit(vec)
#  

## -----------------------------------------------------------------------------
#  # Create some sample data
#  stock_prices <- c(10, 11, 12, 13, 14)
#  returns <- diff(log(stock_prices))
#  
#  # Fit the GED distribution to the data
#  ged_fit(returns)

## -----------------------------------------------------------------------------
#  skew.t_fit(vec)

## -----------------------------------------------------------------------------
#  stock_prices <- c(10, 11, 12, 13, 14)
#  returns <- diff(log(stock_prices))
#  skew.t_fit(returns)
#  

## -----------------------------------------------------------------------------
#  skew.normal_fit(vec)

## -----------------------------------------------------------------------------
#  stock_prices <- c(10, 11, 12, 13, 14)
#  returns <- diff(log(stock_prices))
#  skew.normal_fit(returns)
#  

## -----------------------------------------------------------------------------
#  skew.ged_fit(vec)
#  

## -----------------------------------------------------------------------------
#  returns <- rnorm(100)
#  
#  # Fit the SGED to the returns
#  fit <- skew.ged_fit(returns)

## -----------------------------------------------------------------------------
#  fit_multiple_dist(dist_names, dataframe)

## -----------------------------------------------------------------------------
#  data = asset_loader("path/to/data/folder", c("asset1", "asset2"), "Close")
#  fit_multiple_dist(c("norm_fit", "cauchy_fit"), data)
#  

## -----------------------------------------------------------------------------
#  df <- asset_loader("path/to/data/folder", ("asset1, asset2"), "Close")
#  df <- weekly_return(df) |>
#    na.omit()
#  aic_df <- fit_multiple_dist(df, c("norm_fit", "cauchy_fit"))
#  best_dist(aic_df, c("Norm", "Cauchy"))

