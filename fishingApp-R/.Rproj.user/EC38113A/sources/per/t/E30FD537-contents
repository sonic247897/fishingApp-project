library(foreign)
dfdbf2 <- read.dbf("VI_YACHT_RPNT.dbf",as.is = T)
dfdbf2$TARGET

library("data.table")

dftable2 <- data.table(dfdbf2, stringsAsFactors = F)
class(dftable2$TARGET)
Encoding(dftable2$TARGET) = "UTF-8"
Encoding(dftable2$NAME) = "UTF-8"
Encoding(dftable2$POINT_NM) = "UTF-8"
Encoding(dftable2$MATERIAL) = "UTF-8"
Encoding(dftable2$TIDE_TIME) = "UTF-8"
Encoding(dftable2$NOTICE) = "UTF-8"
Encoding(dftable2$PHOTO1_PAT) = "UTF-8"
Encoding(dftable2$ADR_KNM) = "UTF-8"
Encoding(dftable2$DPWT) = "UTF-8"
dftable2

library(xlsx)

write.xlsx(dftable2, "yatchR.xlsx")
