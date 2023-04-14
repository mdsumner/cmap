## code to prepare `DATASET` dataset goes here

cm_names_values <- names(cm)

good <- logical(length(cm_names))
good[] <- FALSE
for (i in seq_along(cm_names)) {

  obj <- cm[[cm_names[i]]]
  if (inherits(obj, "matplotlib.colors.ListedColormap"))
    val <- try(obj(seq(0, 1, length.out = 10)))
    if (inherits(val, "try-error")) {
      good[i] <- FALSE
    } else {
    if (all(dim(val) == c(10L, 4L))) {
     good[i] <- TRUE
    }
    }

}

cm_names_values <- cm_names_values[good]

usethis::use_data(cm_names_values)
