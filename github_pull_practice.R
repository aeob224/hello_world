library(EVR628tools)
library(ggplot2)
dat <- EVR628tools::data_lionfish
ggplot(data = dat,
mapping = aes(x = total_length_mm,
y = total_weight_gr))+
geom_point()+
labs(x = "Total Length (mm)",
     y = "Weight (g)")

ggplot(data = data_lionfish,
       mapping = aes(x = depth_m,
                     y = total_length_mm))

# Changing colors
ggplot(data = data_lionfish,
       mapping = aes(x = depth_m,
                     y = total_length_mm, fill = temperature_C)) +
  geom_point(shape = 21, size = 4) +
  scale_fill_viridis_c(option = "mako") +
theme_bw()
