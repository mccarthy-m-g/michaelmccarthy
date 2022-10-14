# REMEMBER to restart R after you modify and save this file!

# First, execute the global .Rprofile if it exists. You may configure blogdown
# options there, too, so they apply to any blogdown projects. Feel free to
# ignore this part if it sounds too complicated to you.
if (file.exists("~/.Rprofile")) {
  base::sys.source("~/.Rprofile", envir = environment())
}

if (interactive()) {
  # Make blogdown functions available in all interactive sessions
  suppressMessages(require(blogdown))
  # Add a function for updating the theme
  update_theme <- function() {
    blogdown::install_theme(theme = "hugo-apero/hugo-apero",
                            update_config = FALSE,
                            force = TRUE)
  }
  # Add function for printing useful links for the Hugo Apero theme
  theme_help <- function() {
    cat(
      "GitHub links:\n",
      "- https://github.com/hugo-apero \n",
      "- https://github.com/hugo-apero/hugo-apero \n",
      "- https://github.com/hugo-apero/hugo-apero-docs \n\n",
      "Example site:\n",
      "- https://hugo-apero.netlify.app \n\n",
      "Theme documentation site:\n",
      "- https://hugo-apero-docs.netlify.app \n\n",
      "Hugo Documentation:\n",
      "- https://gohugo.io/documentation/ \n\n",
      "Colour tools:\n",
      "- http://colormind.io \n",
      "- https://www.hexcolortool.com"
    )
  }
}

# Now set options to customize the behaviour of blogdown for this project. Below
# are a few sample options; for more options, see
# https://bookdown.org/yihui/blogdown/global-options.html
options(
  # to automatically serve the site on RStudio startup, set this option to TRUE
  blogdown.serve_site.startup = FALSE,
  # to disable knitting Rmd files on save, set this option to FALSE
  blogdown.knit.on_save = FALSE,
  # build .Rmd to .html (via Pandoc); to build to Markdown, set this option to 'markdown'
  blogdown.method = 'markdown'
)

# fix Hugo version
options(blogdown.hugo.version = "0.89.2")
