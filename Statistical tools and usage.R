#1)How do you calculate the mean of a vector `c(10, 20, 30, 40, 50)` in R? Write the code to perform this calculation
data <- c(10,20,30,40,50)
mean_value <- mean(data)
print(mean_value)

#2)Install and load the `ggplot2` library in R. Write the code to create a simple scatter plot of 
#`x = c(1,2,3)` and `y = c(2, 4, 6)` using `ggplot2`.

library(ggplot2)
data <- data.frame(x = c(1,2,3) , y = c(2, 4, 6))

#Create a scatterplot 

plot <- ggplot(data,aes(x=x,y=y))+
        geom_point()+
        labs(title="Scatterplot",
             x= "X-axis",
             y ="Y-axis"
             )
print(plot)

#3)Create a data frame in R with the following data:
 # Name <- c("Alice", "Bob", "Charlie") Age <- c(25, 30, 35) df <- data.frame(Name, Age)
#Display the data frame and calculate the average age.

Name <- c("Alice", "Bob", "Charlie")
Age <- c(25, 30, 35)

df <- data.frame(Name,Age)
print(df)

average_age <- mean(df$Age)
print(average_age)

#4) Create a bar plot in R for the vector `c(5, 10, 15)` with the labels `c("A", "B", "C")`.

values <- c(5,10,15)
labels <- c("A", "B", "C")

barplot(values,
        names.arg = labels,
        main = "Barplot",
        col = "cyan",
        xlab = "Categories",
        ylab = "Values"
        )
#5) Given the following data frame in R:
#df <- data.frame(A = c(1, 2, 3), B = c(4, 5, 6))
#What is the code to calculate the sum of each column?

df <- data.frame(A = c(1, 2, 3), B = c(4, 5, 6))

column_sums <- colSums(df)
column_sums

#Data Visualization using R
#Q.1 Create a bar plot in Jupyter Notebook using Matplotlib for the following data:
#categories = ['A', 'B', 'C'] values = [10, 15, 7]
#Label the x-axis as "Categories" and the y-axis as "Values". What is the code to generate this bar
#plot?

categories <- c("A", "B","C")
values <- c(10,15,7)

barplot(values,
        names.arg = categories,
        main = "Barplot",
        col = "cyan",
        xlab = "Categories",
        ylab = "Values"
)

#Q.2 Generate a histogram of the following data in Jupyter Notebook using Matplotlib:
#data = [5, 7, 8, 5, 6, 7, 9, 10, 6, 7]
#Use 5 bins and label the x-axis as "Value" and the y-axis as "Frequency". What is the code?

data <- c(5, 7, 8, 5, 6, 7, 9, 10, 6, 7)

hist(data,
     breaks = 5,
     col = "cyan",
     main = "Histogram",
     xlab = "Value",
     ylab = "Frequency"
)

#Q.3 Create a pie chart in Jupyter Notebook using Matplotlib for the following data:
#sizes = [20, 30, 50] labels = ['A', 'B','C']
#Add a title "Distribution of Categories". What is the code to generate this pie chart?

sizes <- c(20, 30, 50)
labels <- c("A", "B", "C")

pie(sizes,
    labels = labels,
    col = c("lightblue","cyan","red"),
    main = "Distribution of Categories"
)

#Q.4 Using the following data, create a box plot in Jupyter Notebook with Matplotlib:
#data = [5, 7, 8, 6, 5, 7, 9, 10, 6, 7]
#Label the y-axis as "Values". What is the code to generate this box plot?

data <- c(5, 7, 8, 6, 5, 7, 9, 10, 6, 7)

boxplot(data,
        col = "cyan",
        main = "BoxPlot",
        ylab = "Values"
)