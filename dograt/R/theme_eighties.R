
#' Crazy ugly theme
#'
#' @return
#' @export
#'
#' @examples
theme_eighties <- function() {
  theme(title=element_text(size=16, color="purple"),
        plot.background = element_rect(fill="black"),
        panel.background = element_rect(fill="gray"),
        axis.text = element_text(color="green"),
        panel.grid.major = element_line(color="red"),
        panel.grid.minor = element_line(color="yellow"))

}

