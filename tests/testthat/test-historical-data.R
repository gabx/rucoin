# get one pair of symbol prices
prices <- get_kucoin_prices(
  symbols = "KCS/USDT",
  from = "2019-06-01 00:00:00",
  to = "2019-06-02 00:00:00",
  frequency = "1 hour"
)

# test that all columns from historical data returned complety
test_that("all columns from historical data completed", {
  expect_equal(colnames(prices), c("datetime", "open", "high", "low", "close", "volume", "turnover"))
})