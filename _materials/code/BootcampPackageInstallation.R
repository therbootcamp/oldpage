# 7 January 2018
# http://therbootcamp.github.io

# Script to install any packages necessary for the BaselRBootcamp

Bootcamp_package_installation <- function() {

  installed_packages <- rownames(installed.packages())

  packages.to.install <- c(
    
    # Tidyverse --------------
    
    "tidyverse",
    
    # Utilities --------------
    
    "devtools",
    "Rcpp",
    "rvest",
    "lubridate", 
    "skimr",
    
    # Markdown / Shiny --------------
    
    # "shiny", 
    # "shinyjs",
    # "markdown", 
    # "rmarkdown",
    # "rmdformats",
    # "DT",
    
    
    # Stats --------------
    
    "lme4",
    "afex",
    "car",
    "BayesFactor",
    "parfm", 
    "lava",
    "rsq",
    "broom", 
    
    # ML --------------
    
    "caret",                       
    "FFTrees",
    "rpart", 
    "randomForest", 
    "e1071", 
    "party", 
    "partykit", 
    "glmnet",
    "earth",
    "tensorflow",
    "Boruta",
    
    # Plotting --------------
    "yarrr", 
    "diagram",
    "ggRandomForests",
    "ggthemes", 
    "ggpubr",
    
    # Datasets --------------
    "speff2trial",
    "ISLR",
    "mlbench")

  
  message("Welcome to the BaselRBootcamp!")
  message("I'm going to install many packages for you now, this may take a few minutes...")
  
  for(package.i in sort(packages.to.install)) {

    if((package.i %in% installed_packages) == FALSE) {

      if(package.i == "Rcpp"){
        test <- try(install.packages(package.i))
        if(is.null(test)){
          message(paste("Installing", package.i, "..."))
        } else {
        message(paste("Error: could not install package Rcpp"))
        }
      } else {
        install.packages(package.i)
        message(paste("Installing", package.i, "..."))
      }

    } else {
    message(paste(package.i, "already installed!"))
    }


  }
  
  devtools_packages_to_install <- c("kassambara/ggcorrplot", "therbootcamp/baselers")
  
    for(package.i in sort(devtools_packages_to_install)) {

    if((package.i %in% installed_packages) == FALSE) {

        devtools::install_github(package.i)
        message(paste("Installing", package.i, "..."))
      }  else {
    message(paste(package.i, "already installed!"))
      }
    }

  message("--------------------------------")
  message("Package installation Finished!!!")
  message("See you soon at the bootcamp :)")
  message("therbootcamp@gmail.com")
  message("www.therbootcamp.com")
  message("--------------------------------")
  
  }
  
  
# Run code!
Bootcamp_package_installation()

