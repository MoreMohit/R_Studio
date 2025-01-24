
#Load necessary data
library(readr)

csv_url <- "https://archive.ics.uci.edu/ml/machine-learning-databases/iris/iris.data"

df_csv <- read.csv(csv_url)

column_names <- c("Sepal Length","Sepal Width","Petal Length","Petal Width","Species")

head(df_csv)

data <- read.csv(csv_url, 
                      header = FALSE, 
                      col.names = column_names
)
#2) Summary
summary(data)

#3)histograms for Sepal Width columns
library(ggplot2)
ggplot(data, 
       aes(x = Sepal.Width)) +
       geom_histogram(binwidth = 0.2, fill = "cyan", alpha = 0.7) +
       labs(title = "Histogram of Sepal Width",
       x = "Sepal Width",
       y = "Frequency"
)

#3)histograms for Petal Width columns
library(ggplot2)
ggplot(data, 
       aes(x = Petal.Width)) +
  geom_histogram(binwidth = 0.2, fill = "cyan", alpha = 0.7) +
  labs(title = "Histogram of Petal Width",
       x = "Petal Width",
       y = "Frequency"
)

#4)scatter plot of Sepal Length vs. Sepal Width, colored by Species
ggplot(data, aes(x = Sepal.Length, y = Sepal.Width, color = Species)) +
       geom_point(size = 3) +
       labs(title = "Scatter Plot of Sepal Length vs. Sepal Width",
            x = "Sepal Length",
            y = "Sepal Width"
  )

#5) Create a box plot of Petal Length by species
ggplot(data, 
       aes(x = Species, y = Petal.Length, fill = Species)) +
  geom_boxplot() +
  labs(title = "Box Plot of Petal Length by Species", 
       x = "Species",
       y = "Petal Length"
)