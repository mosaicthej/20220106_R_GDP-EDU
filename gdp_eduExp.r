logGDP = read.csv('GDP_Log_grouped.csv')
logEdu = read.csv("eduExpense_Log_grouped.csv")

# install.packages("ggplot2")
library(ggplot2)

# Scatter plot by group
p<-ggplot(logGDP, aes(x = year, y =GDP_log, 
                      color = prov, shape = prov)) +
  geom_point() + 
  geom_smooth(method="lm") +
  labs(title="2015~2020年西北五省经济增长变化",
       x="年份",y="LOG GDP",
       color = "省份_颜色",shape = "省份_标记")


ggsave("GDP_log.png",p)

# Scatter plot by group
q<-ggplot(logEdu, aes(x = year, y =Edu_log, 
                      color = prov, shape = prov)) +
  geom_point() + 
  geom_smooth(method="lm")+
  labs(title="2015~2020年西北五省教育经费总支出情况",
       x="年份",y="LOG 教育经费总支出",
       color = "省份_颜色",shape = "省份_标记")

ggsave("Edu_log.png",q)

