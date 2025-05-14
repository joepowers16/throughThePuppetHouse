create_post <- function(topic, my_date = Sys.Date()) {
    # Create directory 
    dir_name <- paste0(my_date, "_", clean_string(topic))
    dir_path <- here::here("posts", dir_name)
    dir.create(dir_path)
    
    # Create the index.qmd file content
    qmd_content <- paste0(
        "---\n",
        "title: \"", topic, "\"\n",
        "author: \"Joseph Powers\"\n",
        "date: \"", my_date,"\"\n",
        "image: 'post.png'\n",
        "categories: [uncategorized]\n",
        "draft: true\n",
        "warning: false\n",
        "message: false\n",
        "echo: true\n",
        "freeze: false\n",
        "code-fold: true\n",
        "---\n",
        "\n",
        "```{r}\n",
        "pacman::p_load(tidyverse, glue, scales)\n",
        "",
        "theme_set(theme_bw())\n",
        "```"
    )
    
    # Write the content to index.qmd file in the new directory
    writeLines(
        qmd_content, 
        con = file.path(dir_path, "index.qmd")
        )
    
    # Print a success message
    cat("Directory", dir_name, "created with index.qmd file.\n")
}