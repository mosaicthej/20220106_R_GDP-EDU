# The width argument of the geom_bar() function allows to control the bar width. It ranges between 0 and 1, 1 being full width.

# See how this can be used to make bar charts with variable width.

# Load ggplot2
library(ggplot2)

# Create data
data <- data.frame(
  name=c("A","B","C","D","E") ,  
  value=c(3,12,5,18,45)
  )

# Barplot
ggplot(data, aes(x=name, y=value)) + 
  geom_bar(stat = "identity", width=0.2) 