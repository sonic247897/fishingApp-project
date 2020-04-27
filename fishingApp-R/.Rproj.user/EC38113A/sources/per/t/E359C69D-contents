install.packages("foreign")
library(foreign)
dfdbf <- read.dbf("VI_YACHT_SPOINT.dbf",as.is = T)
dfdbf$TARGET

install.packages("data.table")
library("data.table")

dftable <- data.table(dfdbf, stringsAsFactors = F)
class(dftable$TARGET)
Encoding(dftable$TARGET) = "UTF-8"
Encoding(dftable$NAME) = "UTF-8"
Encoding(dftable$POINT_NM) = "UTF-8"
Encoding(dftable$MATERIAL) = "UTF-8"
Encoding(dftable$TIDE_TIME) = "UTF-8"
Encoding(dftable$NOTICE) = "UTF-8"
Encoding(dftable$PHOTO1_PAT) = "UTF-8"
Encoding(dftable$ADR_KNM) = "UTF-8"
Encoding(dftable$DPWT) = "UTF-8"
dftable

install.packages("xlsx")
library(xlsx)

write.xlsx(dftable, "yatchP.xlsx")
