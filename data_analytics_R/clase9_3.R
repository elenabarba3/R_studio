#PARTE 1 
install.packages('caret')
library(caret)
library(ggplot2)
library(lattice)
modelos <- getModelInfo()
names(modelos)
modelLookup('knn') #para saber que tenemos que ajustar en el modelo 
getModelInfo('knn')
getModelInfo('rf')

data('mtcars')

#para definir cual va a ser la raiz para la generacion de numeros  para que. losepare de manera igual el modeloo
set.seed(123)
index <- createDataPartition(mtcars$mpg,
                             p=0.7, #el 70% prueba y 30 test
                             list=FALSE #QUE NOd evuelva lista. sino vector 
                             )
trainset <- mtcars[index,]
testset <- mtcars[-index,] #para que. nocoja. indexporque esta en eld e entrenamiento
head(testset)
modelLookup('lm')
modelLookup('neuralnet')
modelLookup('knn')

#FUNCION DE CONTROL. validacion cruzada. VERBOSITER para encontrar el parametro optimo 
ctrl <- trainControl(method='cv', number=10,  verboseIter = TRUE)

#regresion model 
lr_model <- train(mpg~.,
                  data=trainset,
                  method='lm',
                  trControl=ctrl)
lr_model

#modelo prediccion 
lr_predict <- predict (lr_model, testset)
lr_rmse <-  sqrt(mean((lr_predict-testset$mpg))^2) #error cuadratico medio. cuanto mas bajo mejor 
lr_rmse

#probamos otro algoritmo para ver cual va mejor, probamos KNN 
knn_model <- train(mpg~.,
                  data=trainset,
                  method='knn',
                  trControl=ctrl,
                  tuneGrid= expand.grid(k=seq(1,20,1))) #ajustarparametros k , del 1 al 20 de uno en uno 
knn_model

#la k que usa es la que tenga menor. rmse

knn_predict <- predict(knn_model, testset)
knn_predict
knn_rmse <-  sqrt(mean((knn_predict-testset$mpg))^2) #error cuadratico medio. cuanto mas bajo mejor 
knn_rmse

#lo mismo con una red neuronal 
#para saber que especidicar
modelLookup('neuralnet')

nn_model <- train(mpg~.,
                   data=trainset,
                   method='neuralnet',
                   trControl=ctrl,
                   tuneGrid= expand.grid(layer1=c(1:3), layer2=c(1:3),layer3=0)) #ajustarparametros k , del 1 al 20 de uno en uno 
nn_model



nn_predict <- predict(nn_model, testset)
nn_predict
nn_rmse <-  sqrt(mean((nn_predict-testset$mpg))^2) #error cuadratico medio. cuanto mas bajo mejor 
nn_rmse

#comparar 3 modelos 
cat('regresion lineal', lr_rmse, '\n')
cat('KNN', knn_rmse, '\n')
cat('red neuronal', nn_rmse, '\n')

#PARTE 2 
head(iris)
summary(iris)

#separar datos en control y training
data(iris)
set.seed(568)
index <- createDataPartition(iris$Species,
                             p=0.8,
                             list=FALSE)

trainset <- iris[index,]
testset <- iris[-index,]
#FUNCION DE CONTROL. validacion cruzada. VERBOSITER para encontrar el parametro optimo 
ctrl <- trainControl(method='cv', number=10,  verboseIter = TRUE)
knn_modelo <- train(Species~.,
                    data=trainset,
                    method='knn',
                    trControl=ctrl,
                    tuneGrid = expand.grid(k=seq(2,15,1)))

knn_modelo
knn_predict <- predict(knn_modelo,trainset)
knn_predict

#para evaluar bondad para ver cuantos casos ha identificado cuales estas bien y las medidasde esos casos
confusionMatrix(knn_predict, testset$Species)

