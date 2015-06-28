library(xlsx)
setwd("~/Dropbox/GitHub/SP2015/")

dir()

adsp <- read.xlsx("raw/table_ADSP.xlsx", 1, stringsAsFactors = F)
neuron <- read.delim("raw/Astrocytes_vs_neurons.HOMER_sorted_final_header_negative.txt", stringsAsFactors = F)
astrocyte <- read.delim("raw/Astrocytes_vs_neurons.HOMER_sorted_final_header_positive.txt", stringsAsFactors = F)

adsp.bed <- adsp.bed[! duplicated(adsp.bed), ]
rownames(adsp.bed) <- NULL

neuron.bed <- neuron[c("Chr", "Start", "End")]
astrocyte.bed <- astrocyte[c("Chr", "Start", "End")]

data <- list(adsp = adsp, neuron = neuron, astrocyte = astrocyte)
save(data, file = "data.rdt")

adsp.bed <- data.frame(CHR = adsp$CHR, START = adsp$POS - 5e2, END = adsp$POS + 5e2)
adsp.bed <- adsp.bed[! duplicated(adsp.bed), ]
rownames(adsp.bed) <- NULL

neuron.bed <- neuron[c("Chr", "Start", "End")]
astrocyte.bed <- astrocyte[c("Chr", "Start", "End")]

write.table(adsp.bed, file = "adsp.bed", quote = F, row.names = F)
write.table(neuron.bed, file = "neuron.bed", quote = F, row.names = F)
write.table(astrocyte.bed, file = "astrocyte.bed", quote = F, row.names = F)

