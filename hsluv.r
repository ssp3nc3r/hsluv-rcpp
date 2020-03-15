
# example HSLuv used in ggplot

Rcpp::sourceCpp('hsluv.cpp')
library(ggplot2)

# represents percentage outcome, maximum of two types
L <- seq(0, 100, by = 10) 

# percentage point difference between two types: p(type1) - p(type2)
# sign, then, indicates type
C <- seq(-100, 100, by = 10) 

# get all combinations
df <- expand.grid(L = L, C = C) 

# set hue from sign and get abs of diff for chroma / magnitude of diff
df$H <- ifelse(df$C > 0, 20, 290)
df$C <- abs(df$C)

# convert values to HSLuv color space
df_colors <- with(df, hsluv_hex(H, C, L) )

# change strip names
df$H <- ifelse(df$H != first(df$H), "Hue / Type1 favored", "Hue / Type2 favored")

# plot results
ggplot(df) + 
  theme_minimal() +
  theme(panel.grid = element_blank()) +
  geom_point(aes(L, C), 
             fill = df_colors, 
             size = 5,
             shape = 22) + 
  facet_wrap(~H) +
  labs(x = "Luminance / p(outcome | type favored)",
       y = "Chroma / abs(p(outcome | type1) - p(outcome | type2)")

