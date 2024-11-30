# nova simulacia dat - je tu aj spravne y4 (y1, y2, y3 maju nove priebehy)
# + doplnene komentare k ADF testu pre y1, y2, y3

load("ARIMAmodely.Rdata")

library(astsa)
library(urca)

##############################################
plot(y1)
# nenulova stredna hodnota bez trendu
summary(ur.df(y1, type = "drift", lags = 5, selectlags = "BIC"))
# jednotkovy koren sa zamietol -> hladame ARMA model pre y1
acf2(y1)
sarima(y1, 2, 0, 0) # logicky tip, ale nema dobre rezidua

##############################################
plot(y2)
# nenulova stredna hodnota bez trendu
summary(ur.df(y2, type = "drift", lags = 5, selectlags = "BIC"))

##############################################
plot(y3)
# trend -> budeme diferencovat
# trend -> diferencie s nenulovou strednou hodnotou
# v diferenciach nie je trend (nakreslite si graf)
plot(diff(y3))
# -> diferencie s nenulovou strednou hodnotou bez trendu
summary(ur.df(diff(y3), type = "drift", lags = 5, selectlags = "BIC"))