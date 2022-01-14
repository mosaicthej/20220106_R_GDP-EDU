grad_stat = read.csv("QingHaiNingXia2017.csv",
	sep = ',', header=TRUE, encoding = 'UTF-8')

library(ggplot2, dplyr, shadowtext)


p0 <- ggplot(grad_stat, 
	aes(x=municipality, y=elementary_graduates)) + 
	geom_bar(stat = "identity") + 
	coord_flip()

p0


p1<-grad_stat %>%
  arrange(elementary_graduates) %>%    # First sort by val. This sort the dataframe but NOT the factor levels
  mutate(municipality=factor(municipality, levels=municipality)) %>%   # This trick update the factor levels
  ggplot( aes(x=municipality, y=elementary_graduates, colours=province)) +
  geom_bar(stat = "identity", aes(fill=province), color="black") +
  scale_fill_manual(values = alpha(c("#000000", "#FF5733"))) +
  geom_point( size=4, color="orange") +
  geom_shadowtext(aes(label = elementary_graduates),hjust=1)+
  coord_flip() +
  theme_bw() + 
  ylab("")+
  labs(title="2017年青海与宁夏小学毕业人数", 
       y="小学毕业人数", x="市 / 地区", color="省份")

p1
ggsave("QingHaiNingXia2017BarColorGrouped.png",p1)



