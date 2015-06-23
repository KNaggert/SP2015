library(xlsx)
setwd("~/Dropbox/GitHub/SP2015/")

dir()
adsp <- read.xlsx("table_ADSP.xlsx", 1, stringsAsFactors = F)
neuron <- read.delim("Astrocytes_vs_neurons.HOMER_sorted_final_header_negative.txt", stringsAsFactors = F)
astrocyte <- read.delim("Astrocytes_vs_neurons.HOMER_sorted_final_header_positive.txt", stringsAsFactors = F)

data <- list(adsp = adsp, neuron = neuron, astrocyte = astrocyte)
save(data, file = "data.rdt")
