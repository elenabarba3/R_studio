library(caret)
library(dplyr)
data(package='mlbench',PimaIndiansDiabetes2)
head(PimaIndiansDiabetes2)
summary(PimaIndiansDiabetes2)

data <- PimaIndiansDiabetes2 %>%
  select(pregnant, glucose, pressure, mass, pedigree, age, diabetes) %>%
  na.omit()

set.seed(478)
index <- createDataPartition(data$diabetes, 
                             p=0.7,
                             list=FALSE)

trainset <- data[index,]
testset <- data[-index,]

modelLookup('knn')
#funcion control 
ctrl <- trainControl(method='cv', number=8,  verboseIter = TRUE)
knn_params <- expand.grid(k=c(2:20))

knn_model2 <- train(diabetes~.,
                    data=trainset,
                    method='knn',
                    trControl =ctrl,
                    tuneGrid=knn_params)

knn_model2

plot(knn_model2)

knn_predict <- predict(knn_model, testset)
confusionMatrix(knn_predict, testset$diabetes)

#modelo regresion logistica
glm_model <- train(diabetes~.,
                  data=trainset,
                  method='glm',
                  trControl=ctrl
                  )

glm_model
glm_predict <- predict (glm_model, trainset)
confusionMatrix(glm_predict, testset$diabetes)

