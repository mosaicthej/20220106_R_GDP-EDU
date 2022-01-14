# create dummy data
data <- data.frame(
  name=letters[1:5],
  value=sample(seq(4,15),5)
)

# The most basic barplot you can do:
barplot(height=data$value, names=data$name)