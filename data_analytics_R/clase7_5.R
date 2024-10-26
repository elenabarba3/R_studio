#SERIES TEMPORALES
library(forecast)
?AirPassengers
class(AirPassengers)
plot(AirPassengers)

desc <- decompose(AirPassengers, 'multiplicative')
plot(desc)

#marcar inicio y fin de serie temporal 
start(AirPassengers)
end(AirPassengers)

#window para separar datos en conjuntos de entrenamiento
traindata <- window(AirPassengers, start = c(1949,1), end = c(1959, 12))
testdata <- window(AirPassengers, start = c(1960,1), end = c(1960, 12))

#modelo auto ARIMA (modelo autoregresivo integrado de medias moviles), busca patrones
#EN SERie termporal para encontrar patrones. 

modelo <- auto.arima(traindata)
pred <- forecast(modelo, h=length(testdata))
plot(pred)
#ver datos no solo observar
accuracy(pred, testdata)
#MAPE es media de % error absoluto, 