# File 1 of class 11

library("tidyverse")
library("gapminder")

gapminder
write_csv(gapminder, './gapminder.csv')
view(gapminder)

# on windows: .\gapminder.csv

gapminder_sum <- gapminder %>% 
  group_by(continent) %>% 
  summarize(avg_lifeExp=mean(lifeExp))

view(gapminder_sum)
write_csv(gapminder_sum, './gapminder_sum.csv')

gapminder_sum %>% 
  ggplot(aes(x=continent, y=avg_lifeExp)) +
  geom_point() + theme_bw()