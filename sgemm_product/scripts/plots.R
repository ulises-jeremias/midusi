#!/usr/bin/env Rscript

setwd('midusi/sgemm_product')

segmmProductData <- read.csv(file = "filtered_sgemm_product.csv", head = TRUE, sep = ',')

attach(segmmProductData)
