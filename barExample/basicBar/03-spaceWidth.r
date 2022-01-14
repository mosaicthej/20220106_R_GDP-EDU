# create dummy data
data <- data.frame(
  name=letters[1:5],
  value=sample(seq(4,15),5)
)

# Control space:
barplot(height=data$value, 
        names=data$name, 
        col=rgb(0.2,0.4,0.6,0.6), 
        space=c(0.1,0.2,3,1.5,0.3) )
 
# Control width:
barplot(height=data$value, 
        names=data$name, 
        col=rgb(0.2,0.4,0.6,0.6), 
        width=c(0.1,0.2,3,1.5,0.3) )
