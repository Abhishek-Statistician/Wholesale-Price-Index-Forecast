# Wholesale-Price-Index-Forecast
Project Overview:- 
This project focuses on analyzing price index data, comparing different predictive models, and identifying the most effective approach for forecasting price fluctuations with high accuracy.

Methodology:- 
Model Fitting:
ARIMA Model (AutoRegressive Integrated Moving Average)
Double Exponential Smoothing (Holt’s Linear Trend Model)
Facebook Prophet (Additive forecasting model)
Model Evaluation:

All models were evaluated using Root Mean Squared Error (RMSE) to determine the best predictive model.
Statistical Tests:
ARCH Test: Checked for the presence of heteroskedasticity (ARCH effect) to assess the necessity of GARCH modeling and to better explain the ARIMA model.
Ljung-Box Test: Evaluated the goodness-of-fit of the ARIMA model by testing residual autocorrelation.

Results & Conclusion:- 
After comparing the models based on their RMSE values, the most accurate forecasting model was identified. The statistical tests provided insights into model assumptions and improvements.
This analysis helps in making informed decisions about which forecasting method works best for price index prediction.
