grad_stat = read.csv("QingHaiNingXia2017.csv",
                     sep = ',', header=TRUE, encoding = 'UTF-8')

library(ggplot2, dplyr, shadowtext)




y_sqrt_min = sqrt(min(grad_stat$elementary_graduates))
y_sqrt_max = sqrt(max(grad_stat$elementary_graduates))
c0 <- ggplot(grad_stat, aes(x=municipality, y=sqrt(elementary_graduates)))+
  geom_bar(stat = "identity", fill = alpha("blue", 0.3)) +
  ylim(-1*y_sqrt_min - y_sqrt_min/10,
       y_sqrt_max + y_sqrt_max/10) + 
  theme_minimal() +
  theme(
    axis.text = element_blank(),
    axis.title = element_blank(),
    panel.grid = element_blank(),
    plot.margin = unit(rep(-2,4), "cm")     # This remove unnecessary margin around plot
  ) +
  coord_polar(start=0)
c0


# ----------------------------------------
# preparing labels
label_data <- data.frame(
  id = seq(1,dim(grad_stat)[1]),
  name = grad_stat$municipality,
  value = sqrt(grad_stat$elementary_graduates)
)

# get angles
n_bar <- nrow(label_data)
angle <- 90 - 360 *  (label_data$id-0.5) /n_bar     
# I substract 0.5 because the letter must have the angle of the center of the bars. Not extreme right(1) or extreme left (0)

# calculate the alignment of labels: right or left
# If I am on the left part of the plot, my labels have currently an angle < -90
label_data$hjust<-ifelse( angle < -90, 1, 0)

# flip angle BY to make them readable
label_data$angle<-ifelse(angle < -90, angle+180, angle)
# -----------------------------------------
library(shadowtext)
c1 <- ggplot(grad_stat, aes(x=municipality, y=sqrt(elementary_graduates)))+
  geom_bar(stat = "identity", fill = alpha("blue", 0.3)) +
  ylim(-1*y_sqrt_min - y_sqrt_min/10,
       y_sqrt_max + y_sqrt_max/10) + 
  theme_minimal() +
  theme(
    axis.text = element_blank(),
    axis.title = element_blank(),
    panel.grid = element_blank(),
    plot.margin = unit(rep(-2,4), "cm")     # This remove unnecessary margin around plot
  ) +
  coord_polar(start=0)+
  geom_text(data=label_data, aes(x=id, y=value+5, label=name, hjust=hjust), color="black",alpha=0.6, size=2.5, angle= label_data$angle, inherit.aes = FALSE ) 
c1  