# Basic Types of Visualizations with all three plotting systems:
#1) Base
#2) Lattice
#3) ggplot2
 

# step 1: load the dataset in the memory
data("iris")

# to see first few records of the dataset
head(iris,4)

# to see the last records of the dataset
tail(iris,4)

# number of rows in the dataset
nrow(iris)

# number of columns in the dataset
ncol(iris)

# to check if the rows of the column do not contain any missing values, so TRUE for missin value and FALSE for no missing value
is.na(iris$Sepal.Length)

# to view the help files
?plot
?barplot

# plot a bar chart with petal.length and petal.width
barplot(
  names = iris$Petal.Length,
  height = iris$Petal.Width,
  col = "pink",
  main = "Barplot(base)",
  xlab = "Petal Length",
  ylab = "Petal Width"
)

# basic data visualization using lattice
# install the package lattice
install.packages("lattice")
# load the lattice package
library(lattice)

dotplot(
  x = Petal.Length ~ Petal.Width, # ~ means function of
  data = iris,
  main = "Dotplot(lattice)",
  xlab = "Petal Width",
  ylab = "Petal Length"
)

# barchart using Lattice

barchart(
  x = Petal.Width ~ Petal.Length, # ~ means function of
  data = iris,
  col = "pink",
  main = "Barchart(lattice)",
  xlab = "Petal Length",
  ylab = "Petal Width"
)

# basic data visualization using ggplot2
install.packages("ggplot2")
library(ggplot2)

ggplot(
  data = iris,
  aes(
    x = Petal.Length,
    y = Petal.Width)) +
  geom_point()+
  ggtitle("ggplot") +
  xlab("Petal Length") +
  ylab ("Petal Width")
  
# create a barchart using ggplot

ggplot(
  data = iris,
  aes(
    x = Petal.Length,
    y = Petal.Width)) +
  geom_bar( stat = "identity",
            fill = "pink")+
  ggtitle("ggplot") +
  xlab("Petal Length") +
  ylab ("Petal Width")

