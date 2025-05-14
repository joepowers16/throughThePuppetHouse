require(stringr)
require(dplyr)

clean_string <- function(text) {
    text %>%
        str_to_lower() %>%
        str_replace_all("[^a-z0-9\\s]", "") %>%
        str_replace_all("\\s+", "_")
}