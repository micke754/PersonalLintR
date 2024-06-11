library(lintr)
library(dplyr)

lintersToUse <- all_linters() |>
  names() |>
  unlist() |>
  tibble()

colnames(lintersToUse) <- c("linters")

readr::write_csv(lintersToUse, "LintersToUse.csv")
