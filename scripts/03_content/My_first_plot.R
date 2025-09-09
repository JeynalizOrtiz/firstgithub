#Build a simple graph

#libraries
library(ggplot2)
library(EVR628tools)

#load data

data("data_heatwaves")

#Build a plot

heat <- ggplot(data= data_heatwaves,
               mapping = aes( x= year, y= temp_mean,
                              group = paste(fishery, eu_rnpa))) +
  geom_point(color = "red")

heat

#Export my plot

ggsave(plot = heat,
       filename= "results/img/my_first_plot.png")


#Build another plot

data("data_lionfish")

lionfishplot <- ggplot(data = data_lionfish,
                       mapping = aes(x = site, y = total_length_mm))+
  geom_point(color= "black")

lionfishplot

ggsave(plot = lionfishplot,
       filename = "results/img/my_second_plot.png")

x
