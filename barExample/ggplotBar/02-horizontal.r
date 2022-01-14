# It often makes sense to turn your barplot horizontal. Indeed, it makes the group labels much easier to read.

# Fortunately, the coord_flip() function makes it a breeze.

# Load ggplot2
library(ggplot2)

# Create data
data <- data.frame(
  name=c("A","B","C","D","E") ,  
  value=c(3,12,5,18,45)
  )

# Barplot
ggplot(data, aes(x=name, y=value)) + 
  geom_bar(stat = "identity") +
  coord_flip()