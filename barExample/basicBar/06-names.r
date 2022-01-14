# create dummy data
data <- data.frame(
  name=letters[1:5],
  value=sample(seq(4,15),5)
)

# Uniform color
barplot(height=data$value, names.arg=c("group1","group2","group3","group4","group5"), col="#69b3a2")
