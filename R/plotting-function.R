
#' Title
#'
#' @param base_size Will change the font size for the whole plot
#'
#' @return
#' @export
#'
#' @examples
#' 
custom_theme <- function(base_size = 9) {
  ggplot2::theme(
    axis.ticks       = ggplot2::element_blank(),
    text             = ggplot2::element_text(family = 'Helvetica', color = 'gray30', size = base_size),
    plot.title       = ggplot2::element_text(size = ggplot2::rel(1.25), hjust = 0.5, face = 'bold'),
    panel.background = ggplot2::element_blank(),
    legend.position  = 'right',
    panel.border     = ggplot2::element_blank(),
    panel.grid.minor = ggplot2::element_blank(),
    panel.grid.major = ggplot2::element_line(colour = 'grey90', size = .25),
    legend.key       = ggplot2::element_rect(colour = NA, fill = NA),
    axis.line        = ggplot2::element_blank()
  )
}

library(ggplot2)

temps_df = convert_temps(fahr = airtemps) #this creates 4 points, so can also do:
temps_df = convert_temps(fahr = c(1:300))  #this creates a line

ggplot(temps_df, mapping=aes(x=fahrenheit, y=celsius, color=kelvin)) +
  geom_point() +
  custom_theme(10)  #changes font size to 10, using the function. The function has a font size of 9
###
source("..R/plotting-function.R")  #can source the R script you need in other files. the ../ goes up a directory