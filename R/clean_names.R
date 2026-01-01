# In R/clean_names.R

#' Clean and Standardize Column Names
#'
#' This function takes a data frame and returns a new data frame with
#' cleaned-up column names (lowercase, with underscores instead of spaces
#' or periods).
#'
#' @param df A data frame.
#' @return A data frame with standardized column names.
#' @export
#' @examples
#' messy_df <- data.frame("First Name" = c("Ada", "Bob"), "Last.Name" = c("Lovelace", "Ross"))
#' clean_names(messy_df)
clean_names <- function(df) {
  old_names <- names(df)
  new_names <- tolower(old_names)
  new_names <- gsub("[ .]", "_", new_names)
  names(df) <- new_names
  return(df)
}
