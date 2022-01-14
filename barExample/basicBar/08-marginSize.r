# create dummy data
data <- data.frame(
  name=letters[1:5],
  value=sample(seq(4,15),5)
)

# Increase margin size
par(mar=c(11,4,4,4))

# Uniform color
barplot(height=data$value,
        col="#69b3a2",
        names.arg=c("very long group name 1","very long group name 2","very long group name 3","very long group name 4","very long group name 5"), 
        las=2 
)


# If your group names are long, you need to:

# rotate them to avoid overlapping. This is done with las
# increase bottom margin size using the mar parameter of the par() function. Four values are provided: bottom, left, top, right respectively.
# Note: prefer a horizontal barplot in this case.