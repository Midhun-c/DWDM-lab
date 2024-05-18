# Step 1: Load Data data(iris) # Load Iris dataset
df <- iris # Create a dataframe

# Step 2: Preprocess Data (if needed)
# Skip this step if preprocessing is not required

# Step 3: Choose the Number of Clusters (K) 
k <- 3 # Number of clusters

# Step 4: Perform Clustering 
library("cluster")
set.seed(123) # For reproducibility
pam_result <- pam(df[, -5], k) # Perform clustering

# Step 5: Visualize Results 
library("ggplot2")
ggplot(df, aes(Petal.Length, Petal.Width, color = factor(pam_result$clustering))) + geom_point() +
geom_point(data	=	as.data.frame(pam_result$medoids[,	c("Petal.Length", "Petal.Width")]), color = "black", size = 3, shape = 17) +
labs(title = "K-medoids (PAM) Clustering of Iris Dataset") + theme_minimal()

# Step 6: Interpret Results
# Analyze cluster medoids, cluster sizes, etc.
