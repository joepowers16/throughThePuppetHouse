format_range <- function(.x, .percent = FALSE, .accuracy = 1L){
    if (.percent == FALSE) {
        paste0(range(.x)[[1]], ' to ', range(.x)[[2]])    
    } else {
        paste0(
            percent(range(.x)[[1]], accuracy = .accuracy), 
            ' to ', 
            percent(range(.x)[[2]], accuracy = .accuracy)    
        )
    } 
}

# format_range(.x=1:10)
# format_range(.x=1:10, .percent=TRUE)
# percent(10, accuracy = 1L) 
