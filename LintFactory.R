library(lintr)
library(dplyr)

undesirable_function_linter(fun = c("library" = "NA"), symbol_is_undesirable = FALSE)

lintersToUse <- all_linters() |>
  names() |>
  unlist() |>
  tibble()

colnames(lintersToUse) <- c("linters")


readr::write_csv(lintersToUse, "LintersToUse.csv")
