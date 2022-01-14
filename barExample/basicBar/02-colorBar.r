# create dummy data
data <- data.frame(
  name=letters[1:5],
  value=sample(seq(4,15),5)
)

# Uniform color
barplot(height=data$value, names=data$name, col=rgb(0.2,0.4,0.6,0.6) )

# Specific color for each bar? Use a well known palette
library(RColorBrewer)
coul <- brewer.pal(5, "Set2") 
barplot(height=data$value, names=data$name, col=coul )

# Change border color
barplot(height=data$value, names=data$name, border="#69b3a2", col="white" )