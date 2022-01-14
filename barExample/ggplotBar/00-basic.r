# This is the most basic barplot you can build using the ggplot2 package. 
	# It follows those steps:

# always start by calling the ggplot() function.
	# then specify the data object. It has to be a data frame. 
	# 	And it needs one numeric and one categorical variable.
	#
	# then come thes aesthetics, set in the aes() function: 
	# 	set the categoric variable for the X axis, 
	#				use the numeric for the Y axis

# finally call geom_bar(). 
#	You have to specify stat="identity" for this kind of dataset.

# Load ggplot2
library(ggplot2)

# Create data
data <- data.frame(
  name=c("A","B","C","D","E") ,  
  value=c(3,12,5,18,45)
  )

# Barplot
ggplot(data, aes(x=name, y=value)) + 
  geom_bar(stat = "identity")