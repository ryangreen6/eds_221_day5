# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   https://r-pkgs.org
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Cmd + Shift + B'
#   Check Package:             'Cmd + Shift + E'
#   Test Package:              'Cmd + Shift + T'

hello <- function() {
  print("Hello my name is dograt I am both rat and dog")
  print("kachow")
}

# when creating a new package, you'll start from a template package from R called 'hello'. Once you make changes, you have to reload the whole package to get those changes. To do that, go to the Build tab by the environment, and hit Install! This will restart R and your changed package should be functional.

# once you create a package, you can add metadata, or instructions you can load by typing in the console ?(packagename). To add this metadata, place your cursor at the beginning of the function, and go to Code > Insert Roxygen Skeleton, and fill out that info how you like. Once you've done that, hit Install in the Build tab. This will reload R. Then in the console, type devtools::document() and it will update your package with the metadata you added. Then hit Install again and it should work-- call your package in the console using ?(packagename) to see it.




