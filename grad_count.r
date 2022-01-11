grad_stat = read.csv("QingHaiDataFrameContent.csv", 
                     sep = ',', header=TRUE, encoding = 'UTF-8')
# install.packages("ggplot2")
library(ggplot2)

# Scatter plot by group
p<-ggplot(grad_stat, aes(x = year, y =grad, 
                      color = city, shape=city)) +
  geom_point() + 
  geom_smooth(method="lm") +
  labs(title="2015~2020青海各市/州小学毕业人数",
       x="年份",y="毕业人数",
       color = "市/州_颜色",shape = "市/州_标记")

ggsave("Qinghai_Grad-withShape.png",p)

