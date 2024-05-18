# Load libraries
library(cluster)

# Load Iris dataset
data(iris)

# Set distance measure (Euclidean by default)
distance <- dist(iris[, 1:4])  # Replace 1:4 with your feature indices

# Perform divisive clustering with 3 clusters (adjust k as needed)
diana.cluster <- diana(distance, k = 3)

# Get cluster labels
cluster.labels <- diana.cluster$membership

# Add cluster labels as a new column
iris$cluster <- cluster.labels

# Create a scatter plot with color based on cluster labels (optional)
library(ggplot2)  # Load ggplot2 for visualization (optional)
ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width, color = cluster)) +
  geom_point() +
  labs(title = "Iris Dataset - Divisive Clustering",
       x = "Sepal Length (cm)", y = "Sepal Width (cm)")
