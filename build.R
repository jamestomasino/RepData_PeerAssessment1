#!/usr/bin/env Rscript

## Dependencies
depend <- function (s) {
	if (s %in% rownames(installed.packages()) == FALSE) {
		install.packages(s, repos="http://cran.rstudio.com/", dependencies=TRUE)
	}
	library(s, character.only=TRUE)
}

depend("knitr")
knit('PA1_template.Rmd')
