#install.packages(c("caret","e1071","randomForest","kernlab"))
library(caret)
library(e1071)
library(randomForest)
library(kernlab)

data(mtcars)


predictors <- mtcars[, -1] # All columns except the first one (mpg)
target <- mtcars[, 1] 

set.seed(123)


I <- createDataPartition(target, p = 0.8, list = FALSE)
print(I)

traindata <- predictors[I, ]
testdata <- predictors[-I, ]
trainTarget <- target[I]
testTarget <- target[-I]


model <- lm(trainTarget ~ ., data = traindata)


pred <- predict(model,testdata)


rmse <- sqrt(mean((pred - testTarget)^2))
print(paste("RMSE:", rmse))


plot(testTarget, pred, main = "Actual vs. Predicted", xlab = "Actual", ylab = "Predicted")

abline(0, 1, col = "red")
