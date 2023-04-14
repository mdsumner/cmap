# global reference to scipy (will be initialized in .onLoad)
cm <- NULL

.onLoad <- function(libname, pkgname) {
  # use superassignment to update global reference to scipy
  cm <<- reticulate::import("matplotlib.cm", delay_load = TRUE)
}
