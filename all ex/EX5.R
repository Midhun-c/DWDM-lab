# 1. Install and Load Required Packages:
install.packages("caret")
library(caret)

# 2. Load Dataset:
data(mtcars)

# 3. Data Preprocessing:
# Check for missing values
sum(is.na(mtcars))

# No missing values found, so no need to remove them

# Split data into predictors and target variable
predictors <- mtcars[, -1] # All columns except the first one (mpg)
target <- mtcars[, 1] # First column (mpg)

# 4. Split Data into Training and Testing Sets:
set.seed(123)
trainIndex <- createDataPartition(target, p = 0.8, list = FALSE)
trainData <- predictors[trainIndex, ]
testData <- predictors[-trainIndex, ]
trainTarget <- target[trainIndex]
testTarget <- target[-trainIndex]

# 5. Build Linear Regression Model:
# Train Linear Regression model
lm_model <- train(x = trainData, y = trainTarget, method = "lm")

# 6. Model Evaluation:
# Predict on test data
predictions <- predict(lm_model, newdata = testData)

# Calculate Root Mean Squared Error (RMSE)
rmse <- sqrt(mean((predictions - testTarget)^2))
print(paste("RMSE:", rmse))

# 7. Visualization
plot(x = testTarget, y = predictions, main = "Actual vs. Predicted", xlab = "Actual", ylab = "Predicted")
abline(0, 1, col = "red")
