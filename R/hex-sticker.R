library(hexSticker)
library(sysfonts)
library(tidyverse)

systemfonts::system_fonts() |> View()

# PSYC 615 Lab ----------------------------------------------------------------
library(ggdist)

set.seed(1234)
n <- 5000

df <- tibble(
  .draw = 1:n,
  intercept = rnorm(n, 3, 1),
  slope = rnorm(n, 1, 0.25),
  x = list(-4:5),
  y = map2(intercept, slope, ~ .x + .y * -4:5)
) |>
  unnest(c(x, y))

p <- df |>
  ggplot(aes(x = x, y = y)) +
  stat_lineribbon(.width = c(0.77, 0.99), size = 0.25) +
  scale_fill_brewer() +
  coord_cartesian(expand = FALSE) +
  theme_classic() +
  theme_transparent() +
  theme(
    legend.position = "none",
    axis.title = element_text(size = 16, face = "bold"),
    axis.title.y = element_text(vjust = 0.5, angle = 0),
    axis.ticks = element_blank(),
    axis.text = element_blank()
  )

sysfonts::font_add_google(
  "Commissioner",
  family = "Commissioner",
  bold.wt = 600
)

sticker(
  filename = "content/project/psyc-615-lab/featured-hex.png",
  # Sticker title
  package = "PSYC 615 Lab",
  p_x = 1,
  p_y = 1.4,
  p_color = "black",
  p_family = "Commissioner",
  p_fontface = "bold",
  p_size = 16,
  # Sticker subplot
  subplot = p,
  s_x = 0.95,
  s_y = .75,
  s_width = 1,
  s_height = 1,
  # Sticker URL
  url = "",
  u_x = 1,
  u_y = 0.08,
  u_color = "black",
  u_family = "Aller_Rg",
  u_size = 8,
  u_angle = 30,
  # Sticker and border colour
  h_size = 1.2,
  h_fill = "white",
  h_color = "#256291",
)

# PSYC 617 Lab ----------------------------------------------------------------
library(ggdag)

p <- dag(
  "X -> {i1 i2 i3 i4 i5}"
) |>
  tidy_dagitty(layout = "auto") |>
  mutate(shape = if_else(name == "X", "1", "15")) |>
  ggplot(aes(x = x, y = y, xend = xend, yend = yend)) +
    geom_dag_edges_diagonal(edge_width = 2) +
    geom_dag_point(aes(shape = shape), colour = "black", size = 16, stroke = 3.5) +
    scale_shape_manual(values = c(1, 0)) +
    geom_dag_text(size = 24, colour = "black", fontface = "bold") +
    coord_cartesian(clip = "off") +
    theme_dag() +
    theme(legend.position = "none")

file <- tempfile()
ggsave(file, p, device = ragg::agg_png, units = "px", width = 350, height = 300, scale = 4)

magick::image_read(file)

sticker(
  filename = "content/project/psyc-617-lab/featured-hex.png",
  # Sticker title
  package = "PSYC 617 Lab",
  p_x = 1,
  p_y = 1.4,
  p_color = "black",
  p_family = "Commissioner",
  p_fontface = "bold",
  p_size = 16,
  # Sticker subplot
  subplot = magick::image_read(file),
  s_x = 1,
  s_y = 0.8,
  s_width = 1,
  s_height = 1,
  # Sticker URL
  url = "",
  u_x = 1,
  u_y = 0.08,
  u_color = "black",
  u_family = "Aller_Rg",
  u_size = 8,
  u_angle = 30,
  # Sticker and border colour
  h_size = 1.2,
  h_fill = "white",
  h_color = "#256291"
)
