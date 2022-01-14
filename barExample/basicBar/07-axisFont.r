# create dummy data
data <- data.frame(
  name=letters[1:5],
  value=sample(seq(4,15),5)
)

# Customize labels (left)
barplot(height=data$value, names=data$name, 
        names.arg=c("group1","group2","group3","group4","group5"), 
        font.axis=2, 
        col.axis="orange", 
        cex.axis=1.5 
        )

# Customize title (right)
barplot(height=data$value, names=data$name, 
        xlab="category", 
        font.lab=2, 
        col.lab="orange", 
        cex.lab=2  
        )


# Customize the labels:

# font.axis: font: 1: normal, 2: bold, 3: italic, 4: bold italic
# col.axis: color
# cex.axis: size
# Customize axis title:

# font.lab
# col.lab
# cex.lab