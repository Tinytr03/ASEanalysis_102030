library(tidyverse)
library(readxl)
read_ex
ASEs <- read_excel("ASEdata.xlsx", col_types = c("text", "text", "text", "numeric"))

scatterASE <- ASEs %>% 
  ggplot(aes(x = Type, y = dPSI, color = Contrast, shape = Contrast)) + 
  geom_jitter(position = position_jitter(seed = 2019, width = 0.2), size = 4) + 
  theme_bw(base_size = 14) + scale_color_manual(values = c("#f57f20", "#4bae4a", "#964f9f")) + 
  scale_fill_manual(values = c("#f57f20", "#4bae4a", "#964f9f")) + 
  labs(x = "Event Type", y= "deltla PSI (R-C)") + theme(legend.position = c(0.9, 0.2))

ggsave("scatterASE.pdf", scatterASE, width = 6.5, height = 4)
