# All Libraries
library(readxl)
library(tseries)
library(tidyverse)
library(fpp2) 
library(forecast)
library(FinTS)

# Dataset
data = read_excel("C:\\Users\\abcha\\Desktop\\hackathon\\dataset.xlsx")
data

# Time Series Variable 
wpi = ts(data$WPI,start=1990)
plot(wpi)

# Stationarity Test
adf.test(wpi)
Stationary1=diff(wpi,differences=1)
adf.test(Stationary1)
plot(Stationary1)

# ACF and PACF of Stationary Variable
acf(Stationary1)
pacf(Stationary1)

# ARIMA Model
check=auto.arima(wpi, d=1, max.p=4, max.q=3, seasonal=F)
summary(check)

# Forecasting from ARIMA
forecast(check,h=10)
plot(forecast(check,h=10))

# Double Exponential Smoothing
fit=holt(wpi)
fit
summary(fit)
forecast=predict(fit, n.ahead=10)
forecast
plot(forecast)

# Extract residuals from the ARIMA model
residuals_arima = residuals(check)

# Plot ACF of residuals to visually check for autocorrelation
acf(residuals_arima, main="ACF of ARIMA Residuals")
pacf(residuals_arima, main="ACF of ARIMA Residuals")

# Perform the Box-Ljung test for goodness of fit
Box.test(residuals_arima, lag = 6, type = "Ljung-Box")

# Visually checking for arch effect
acf(residuals_arima^2, main="ACF of Squared Residuals")
pacf(residuals_arima^2, main="PACF of Squared Residuals")

# ARCH Test
ArchTest(residuals_arima, lags = 6)


