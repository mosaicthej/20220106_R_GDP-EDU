

# remove color with theme(legend.position="none")

# Libraries
library(ggplot2)

# 1: uniform color. Color is for the border, fill is for the inside
p1 <- ggplot(mtcars, aes(x=as.factor(cyl) )) +
  geom_bar(color="blue", 
  			fill=rgb(0.1,0.4,0.5,0.7) )
 
# 2: Using Hue
p2 <- ggplot(mtcars, aes(x=as.factor(cyl), fill=as.factor(cyl) )) + 
  geom_bar( ) +
  scale_fill_hue(c = 40) +
  theme(legend.position="none")
 
# 3: Using RColorBrewer
p3 <- ggplot(mtcars, aes(x=as.factor(cyl), fill=as.factor(cyl) )) + 
  geom_bar( ) +
  scale_fill_brewer(palette = "Set1") +
  theme(legend.position="none")

 
# 4: Using greyscale:
p4 <- ggplot(mtcars, aes(x=as.factor(cyl), fill=as.factor(cyl) )) + 
  geom_bar( ) +
  scale_fill_grey(start = 0.25, end = 0.75) +
  theme(legend.position="none")

 
# 5: Set manualy
ggplot(mtcars, aes(x=as.factor(cyl), fill=as.factor(cyl) )) +  
  geom_bar( ) +
  scale_fill_manual(values = c("red", "green", "blue") ) +
  theme(legend.position="none")

