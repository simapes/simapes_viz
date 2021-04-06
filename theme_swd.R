AZUL_SIMAPES <- "#1385c4"
VERDE_SIMAPES <- "#368a41"
AMARELO_SIMAPES <- "#eed52e"
GRAY3 <- "#555655"
GRAY4 <- "#646369"
GRAY6 <- "#828282"
GRAY7 <- "#929497"
GRAY9 <- "#BFBEBE"
GRAY10 <- "#F0F0F0"

theme_swd <- function() {
  theme_minimal(base_size = 12) +
    theme(
      panel.grid.major = element_blank(),
      panel.grid.minor = element_blank(),
      axis.line = element_line(size = .1, color = GRAY9),
      axis.text = element_text(color = GRAY7),
      axis.ticks.x = element_line(size = 0.5, color = GRAY9),
      axis.ticks.y = element_line(size = 0.5, color = GRAY9),
      axis.title = element_text(color = GRAY3),
      axis.title.y = element_text(hjust = 1, margin = margin(0, 6, 0, 15, "pt")),
      axis.title.x = element_text(hjust = 0, margin = margin(6, 0, 15, 0, "pt")),
      plot.subtitle = element_text(color = GRAY4, size= 8),
      legend.title = element_text(color = GRAY4, size= 10),
      legend.text = element_text(color = GRAY4, size= 8),
      plot.title = element_text(color = GRAY4, size= 14, margin=margin(0,0,5,0)),
      plot.title.position = "plot",
      plot.caption = element_text(hjust = 0, color = GRAY6),
      plot.caption.position = "plot",
      plot.margin = margin(.5,.5,.5,.5,"cm"),
      strip.text = element_text(color = GRAY7)) 
}