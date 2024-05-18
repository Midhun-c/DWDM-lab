# Step 1: Load Data data(iris) # Load Iris dataset
df <- iris # Create a dataframe

# Step 2: Preprocess Data (if needed)
# Skip this step if preprocessing is not required

# Step 3: Calculate Distance Matrix
dist_matrix <- dist(df[, -5]) # Compute pairwise distance matrix

# Step 4: Perform Clustering
hc <- hclust(dist_matrix, method = "complete") # Perform hierarchical clustering

# Step 5: Visualize Dendrogram
plot(hc, main = "Dendrogram of Iris Dataset")

# Step 6: Cut Dendrogram (Optional)
cut_height <- 2 # Specify the height to cut the dendrogram clusters <- cutree(hc, h = cut_height)

# Step 7: Visualize Clustered Data (Optional) library(ggplot2)
df$cluster <- as.factor(clusters)
ggplot(df, aes(Petal.Length, Petal.Width, color = cluster)) + geom_point() +
labs(title = "Hierarchical Clustering of Iris Dataset") + theme_minimal()
