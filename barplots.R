setwd("C:\\Users\\dener\\Desktop\\LAST\\AGBASE")

# Library
library(ggplot2)

bp <- read.table("bp.txt", header=T, sep="\t")
cc <- read.table("cc.txt", header=T, sep="\t")
mf <- read.table("mf.txt", header=T, sep="\t")

ggplot(bp, aes(x=Annotation, y=Total)) + geom_bar(stat = "identity") + coord_flip() + theme_minimal()+ theme(text = element_text(size=18)) + geom_text(aes(label=Total), vjust=0.3, hjust=-0.1, size=3)
ggplot(cc, aes(x=Annotation, y=Total)) + geom_bar(stat = "identity") + coord_flip() + theme_minimal()+ theme(text = element_text(size=18)) + geom_text(aes(label=Total), vjust=0.3, hjust=-0.1, size=3)
ggplot(mf, aes(x=Annotation, y=Total)) + geom_bar(stat = "identity") + coord_flip() + theme_minimal()+ theme(text = element_text(size=18)) + geom_text(aes(label=Total), vjust=0.3, hjust=-0.1, size=3)








ggplot(cc, aes(x=Annotation, y=Total)) + geom_bar(stat = "identity") + coord_flip() + theme_minimal()+ geom_text(aes(label=Total), vjust=0.3, hjust=-0.1, size=3)
ggplot(mf, aes(x=Annotation, y=Total)) + geom_bar(stat = "identity") + coord_flip() + theme_minimal()+ geom_text(aes(label=Total), vjust=0.3, hjust=-0.1, size=3)



ggplot(cc, aes(x=Annotation, y=Total)) + geom_bar(stat = "identity") + coord_flip() + theme_light()+ theme(text = element_text(size=10))
ggplot(mf, aes(x=Annotation, y=Total)) + geom_bar(stat = "identity") + coord_flip() + theme_light()+ theme(text = element_text(size=10))