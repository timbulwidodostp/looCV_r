# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Diagnostic cross-validation tool for ordination based on fitted values Use looCV With (In) R Software
install.packages("RRPP")
library("RRPP")
looCV_Data = read.csv("https://raw.githubusercontent.com/timbulwidodostp/looCV_r/main/looCV/looCV_Data.csv",sep = ";")
# Estimation Diagnostic cross-validation tool for ordination based on fitted values Use looCV With (In) R Software
Dependen <- cbind(looCV_Data$Dependen_1, looCV_Data$Dependen_2, looCV_Data$Dependen_3, looCV_Data$Dependen_4)
looCV_Result_1 <- lm.rrpp(Dependen ~ Independen_1*Independen_2, data = looCV_Data, iter = 0)
looCV_Result_2 <- looCV(looCV_Result_1)
summary(looCV_Result_2)
group <- interaction(looCV_Data$Independen_1, looCV_Data$Independen_2)
plot(looCV_Result_2, flip = 1, pch = 19, col = group)
# Diagnostic cross-validation tool for ordination based on fitted values Use looCV With (In) R Software
# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Finished