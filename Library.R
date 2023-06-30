# tidyverse
library("tidyverse")
library("dplyr")
library("readxl")
library("rstatix")
library(furrr)

# basic
library(glue)
library(knitr)

filter <- dplyr::filter
select <- dplyr::select
rename <- dplyr::rename
summarise <- dplyr::summarise

# bioinformatics
library(DESeq2)
library(msigdbr)
library(goseq)
library(EnsDb.Hsapiens.v86)
library(clusterProfiler)
library(DOSE)
library(org.Hs.eg.db)
library(GO.db)
library(ConsensusClusterPlus)
library(DirichletMultinomial)

# epidemiology
library("survival")
library("gmodels")
library("EValue")
library(logistlogF)
library(sandwich)
library(lmtest)

# visiualization
library(ggrepel)
library(RColorBrewer)
library(circlize)
library(ggalluvial)
library(ggfortify)
library(GenomeInfoDb)
library(extrafont)
library(forestplot)

# Theme
theme_set(theme_classic())
theme_update(panel.grid.major = element_blank(),
             panel.grid.minor = element_blank(),
             strip.background = element_blank(),
             # legend.key.size = unit(3, "mm"),
             plot.margin=unit(c(1, 1, 1, 1),"mm"))