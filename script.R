# PART A
load("NLucic_SIHTD_Continuous_Foreign_Trade_series_1900-2021-14032024.Rdata")
class(x)
data <- x$Hawaii
na_value_idx <- max(which(!is.na(data)))
years <- x$Years[1:na_value_idx]
start_year <- min(years)
end_year <- max(years)
data <- ts(data[1:na_value_idx], start=start_year, end=end_year)

plot(data)
plot(log(data))

diff_data <- diff(log(data))
plot(diff(log(data)))


# PART B

