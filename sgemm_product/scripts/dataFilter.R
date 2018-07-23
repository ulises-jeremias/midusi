#!/usr/bin/env Rscript

setwd('midusi/sgemm_product')

originalCsvData <- read.csv(file = "sgemm_product.csv", head = TRUE, sep = ',')

runColnames <- c("Run1..ms.", "Run2..ms.", "Run3..ms.", "Run4..ms.")

cat("CSV Data type: ", class(originalCsvData), "\n")
cat("Number of Instances: ", nrow(originalCsvData), "\n")
cat("Number of Attributes: ", length(originalCsvData), "\n")
cat("Attributes Name: ", colnames(originalCsvData), "\n\n\n")

filteredData <- subset(
  originalCsvData,
  MWG == NWG & (MWG == 64 | MWG == 128) &
  (SA == 1 & SB == 1)
)

filteredData$Run <- rowMeans(filteredData[, runColnames], na.rm = TRUE)
filteredData <- filteredData[, !(colnames(filteredData) %in% runColnames)]

cat("Number of Instances: ", nrow(filteredData), "\n")
cat("Number of Attributes: ", length(filteredData), "\n")
cat("Attributes Name: ", colnames(filteredData), "\n")

write.csv(filteredData, "filtered_sgemm_product.csv", row.names = FALSE)

segmmProductData <- read.csv(file = "filtered_sgemm_product.csv", head = TRUE, sep = ',')

View(segmmProductData)
