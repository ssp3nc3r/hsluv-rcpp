

# Load functions for mapping color https://github.com/ssp3nc3r/hsluv-rcpp
library(HSLuv)

# Create sample data encoded as hue, saturation, luminance
df <- expand.grid(H = c(20, 290),
                  S = seq(0, 100, by = 10),
                  L = seq(0, 100, by = 10))

# Convert HSLuv scaled values to RGB color space as hex code #RRGGBB
df$colors <- with(df, hsluv_hex(H, S, L) )

# Plot data encoded as colors
library(ggplot2)

ggplot(df) +
  theme_minimal() +
  theme(panel.grid = element_blank(),
        axis.text.x.top = element_blank()) + 
  geom_point(aes(L, S), color = '#eeeeee', fill = df$colors, size = 10, shape = 22) +
  scale_x_continuous(breaks = seq(0, 100, by = 20),
                     sec.axis = sec_axis(~., name = 'Hue')) +
  scale_y_continuous(breaks = seq(0, 100, by = 20)) + facet_wrap(~H) +
  labs(x = 'Luminance',
       y = 'Saturation')
