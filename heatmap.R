setwd("C:\\Users\\dener\\Desktop\\LAST\\heatmap")
setwd("C:\\Users\\dener\\Desktop\\LAST\\AGBASE")
library(gplots)
library(ggplot2)

bp <- read.table("bpheat.txt", header= F, sep= "\t", row.names = 1)
head(bp)
cds <- read.table("hm_cds.txt", header= T, sep= "\t", dec = ",", row.names = 1)
intron <- read.table("hm_intron.txt", header= T, sep= "\t", dec = ",", row.names = 1)
exon <- read.table("hm_exon.txt", header= T, sep= "\t", dec = ",", row.names = 1)
five <- read.table("hm_five.txt", header= T, sep= "\t", dec = ",", row.names = 1)
tree <- read.table("hm_tree.txt", header= T, sep= "\t", dec = ",", row.names = 1)

#normal
bp <- matrix(rnorm(100), nrow=100, ncol=3)

cds <- as.matrix(cds)
intron <- as.matrix(intron)
exon <- as.matrix(exon)
five <- as.matrix(five)
tree <- as.matrix(tree)

#transposto
bp <- as.matrix(t(bp[, -1]))

cds <- as.matrix(t(cds))
intron <- as.matrix(t(intron))
exon <- as.matrix(t(exon))
five <- as.matrix(t(five))
tree <- as.matrix(t(tree))

heatmap.2(bp, col=gplots::bluered(100), scale="col", density.info = "none", trace = "none")

heatmap.2(cds, col=gplots::bluered(100), scale="col", density.info = "none", trace = "none")
heatmap.2(intron, col=gplots::bluered(100), scale="col", density.info = "none", trace = "none")
heatmap.2(exon, col=gplots::bluered(100), scale="col", density.info = "none", trace = "none")
heatmap.2(five, col=gplots::bluered(100), scale="col", density.info = "none", trace = "none")
heatmap.2(tree, col=gplots::bluered(100), scale="col", density.info = "none", trace = "none")