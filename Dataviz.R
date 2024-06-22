library(ggplot2)
library(scales)
library(extrafont)

extrafont::loadfonts(device = "win", quiet = TRUE)

colors_mono <- c("#018efb", "#3780d8", "#4572b6", "#4b6496", "#4b5776")

DataViz <- function(colors = colors_dist) {
  list(
    theme(
      text = element_text(family = "Roboto"),
      plot.title = element_text(face = "bold", hjust = 0, size = 20),
      plot.subtitle = element_text(face = "plain", hjust = 0, size = 16),
      plot.caption = element_text(face = "plain", hjust = 0, size = 10, colour = "#353535"),
      plot.background = element_rect(fill = "#FFFFFF"),
      axis.title.x = element_text(face = "italic", angle = 0, hjust = 0.5, vjust = 0.5, size = 12),
      axis.title.y = element_text(face = "italic", angle = 90, hjust = 0.5, vjust = 0.5, size = 12),
      axis.ticks.y = element_blank(),
      axis.ticks.x = element_line(color = "#0E0C0D"),
      axis.line.x = element_line(color = "#0E0C0D"),
      panel.background = element_rect(fill = "#FFFFFF"),
      panel.grid.minor.x = element_blank(),
      panel.grid.major.x = element_blank(),
      panel.grid.minor.y = element_blank(),
      panel.grid.major.y = element_line(color = "#D2D2D2"),
      legend.position = "top"
    ),
    scale_y_continuous(position = "right"),
    scale_color_manual(name = "Legenda", values = colors)
  )
}