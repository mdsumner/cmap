## this just me finding how to get this particular colourmap from python
## https://stackoverflow.com/questions/18265935/how-do-i-create-a-list-with-numbers-between-two-values
# from matplotlib import cm
# cm.gist_earth
# list2 = [x*(1/255) for x in range(0, 255)]
# cm.gist_earth(list2, bytes =True)

globalVariables("cm_names_values")

#' Available named matplotlib palettes
#'
#'
#' @return a character vector of available palettes for [cm_pal()]
#' @export
#'
#' @examples
#' image(volcano, col = cm_pal("terrain_r")(120))

cm_names <- function() cm_names_values


#' Create a function from a matplotlib palette
#'
#' @param pal Name of matplotlib palette, see [cm_names()] for available one
#'
#' @return a function like grey.colors
#' @export
#'
#' @importFrom grDevices rgb
#' @examples
#' image(volcano, col = cm_pal("terrain_r")(120))
cm_pal <- function(pal = "gist_earth") {
  funpal <- cm[[pal]]
  function(n, start = 0, end = 1, alpha = 1) {
    colarr <- funpal(seq(start, end, length.out = n))
    grDevices::rgb(colarr[,1L, drop = TRUE], colarr[,2L, drop = TRUE], colarr[,3L, drop = TRUE], alpha)
  }
}
