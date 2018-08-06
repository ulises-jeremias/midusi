#!/usr/bin/env Rscript

library(ggplot2)

setwd("midusi/sgemm_product")

segmmProductData <- read.csv(file = "data/filtered_sgemm_product.csv", head = TRUE,
  sep = ",")

View(segmmProductData)

attach(segmmProductData)

# Histogram for Run column

colmax <- max(Run, na.rm = TRUE)
colmin <- min(Run, na.rm = TRUE)
binwidth <- (colmax - colmin)/18

ggplot(data = segmmProductData, aes(x = Run)) + geom_histogram(binwidth = binwidth,
  aes(fill = ..count..), alpha = 0.9) + labs(x = "Run", y = "Cantidad", fill = "Run")

ggplot(data = segmmProductData, aes(x = Run)) + geom_histogram(binwidth = binwidth,
  aes(y = ..density.., fill = ..density..), alpha = 0.9) + geom_density(col = 4) +
  labs(x = "Run", y = "Densidad", fill = "Run")

# Boxplot for Run attribute

boxplot(Run, xlab = "Run", ylab = "Cantidad", col = cm.colors(8))

## Add data points

levelProportions <- summary(Run)/nrow(segmmProductData)
myjitter <- jitter(rep(1, length(Run)), amount = levelProportions[1]/2)
points(myjitter, Run)

# Barplot for discrete numerical attributes

ggplot(data = segmmProductData, aes(x = as.factor(MWG), fill = as.factor(MWG))) +
  geom_bar() + scale_fill_hue(c = 40) + labs(x = "MWG", y = "Frecuencia", fill = "MWG")

ggplot(data = segmmProductData, aes(x = as.factor(NWG), fill = as.factor(NWG))) +
  geom_bar() + scale_fill_hue(c = 40) + labs(x = "NWG", y = "Frecuencia", fill = "NWG")

ggplot(data = segmmProductData, aes(x = as.factor(KWG), fill = as.factor(KWG))) +
  geom_bar() + scale_fill_hue(c = 40) + labs(x = "KWG", y = "Frecuencia", fill = "KWG")

ggplot(data = segmmProductData, aes(x = as.factor(MDIMC), fill = as.factor(MDIMC))) +
  geom_bar() + scale_fill_hue(c = 40) + labs(x = "MDIMC", y = "Frecuencia", fill = "MDIMC")

ggplot(data = segmmProductData, aes(x = as.factor(NDIMC), fill = as.factor(NDIMC))) +
  geom_bar() + scale_fill_hue(c = 40) + labs(x = "NDIMC", y = "Frecuencia", fill = "NDIMC")

ggplot(data = segmmProductData, aes(x = as.factor(MDIMA), fill = as.factor(MDIMA))) +
  geom_bar() + scale_fill_hue(c = 40) + labs(x = "MDIMA", y = "Frecuencia", fill = "MDIMA")

ggplot(data = segmmProductData, aes(x = as.factor(NDIMB), fill = as.factor(NDIMB))) +
  geom_bar() + scale_fill_hue(c = 40) + labs(x = "NDIMB", y = "Frecuencia", fill = "NDIMB")

ggplot(data = segmmProductData, aes(x = as.factor(KWI), fill = as.factor(KWI))) +
  geom_bar() + scale_fill_hue(c = 40) + labs(x = "KWI", y = "Frecuencia", fill = "KWI")

ggplot(data = segmmProductData, aes(x = as.factor(VWM), fill = as.factor(VWM))) +
  geom_bar() + scale_fill_hue(c = 40) + labs(x = "VWM", y = "Frecuencia", fill = "VWM")

ggplot(data = segmmProductData, aes(x = as.factor(VWN), fill = as.factor(VWN))) +
  geom_bar() + scale_fill_hue(c = 40) + labs(x = "VWN", y = "Frecuencia", fill = "VWN")

ggplot(data = segmmProductData, aes(x = as.factor(STRM), fill = as.factor(STRM))) +
  geom_bar() + scale_fill_hue(c = 40) + labs(x = "STRM", y = "Frecuencia", fill = "STRM")

ggplot(data = segmmProductData, aes(x = as.factor(STRN), fill = as.factor(STRN))) +
  geom_bar() + scale_fill_hue(c = 40) + labs(x = "STRN", y = "Frecuencia", fill = "STRN")

ggplot(data = segmmProductData, aes(x = as.factor(SA), fill = as.factor(SA))) + geom_bar() +
  scale_fill_hue(c = 40) + labs(x = "SA", y = "Frecuencia", fill = "SA")

ggplot(data = segmmProductData, aes(x = as.factor(SB), fill = as.factor(SB))) + geom_bar() +
  scale_fill_hue(c = 40) + labs(x = "SB", y = "Frecuencia", fill = "SB")
