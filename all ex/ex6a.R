# Step 1: Load Data data(iris) # Load Iris dataset
library("ggplot2")
df <- iris # Create a dataframe

# Step 2: Preprocess Data (if needed)
# Skip this step if preprocessing is not required

# Step 3: Choose the Number of Clusters (K) 
k <- 3 # Number of clusters

# Step 4: Perform Clustering set.seed(123) # For reproducibility
kmeans_result <- kmeans(df[, -5], centers = k) # Perform clustering

# Step 5: Visualize Results library(ggplot2)
ggplot(df, aes(Petal.Length, Petal.Width, color = factor(kmeans_result$cluster))) + geom_point() +
geom_point(data	=	as.data.frame(kmeans_result$centers[,	c("Petal.Length", "Petal.Width")]), color = "black", size = 3, shape = 17) +
labs(title = "K-means Clustering of Iris Dataset") + theme_minimal()

# Step 6: Interpret Results
# Analyze cluster centroids, cluster sizes, etc.
