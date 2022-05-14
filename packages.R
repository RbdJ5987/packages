# List all packages -------------------------------------------------------


pckgs <- c("foreign", "dplyr", "tidyr", "tidyverse", "knitr", "car", 
           "stargazer", "lmtest", "AER", "broom", "broom.mixed",
           "coefplot","MASS", "multcomp", "abind", "ggplot2", 
           "ggmcmc", "sjPlot", "httr", "insight",
           "interplot", "brms", "GGally", "stringr", "scales", 
           "summarytools", "cowplot", "gridExtra", "rlang") 
        


# Install packages --------------------------------------------------------

installed_packages <- (pckgs %in% rownames(install.packages()))
if (any(installed_packages == FALSE)) { 
  install.packages(pckgs[!installed_packages])
}



# Loading Packages  -------------------------------------------------------

invisible(lapply(pckgs, library, character.only = TRUE))