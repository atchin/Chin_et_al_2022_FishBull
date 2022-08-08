setwd("C:/Users/Andrew Chin/Documents/UW SAFS/CAPSTONE/DV_otos R/to_use/allsessions/cumulative")
pdf(file = "dogleg oto figs Sr+Zn.pdf", paper = "a4r")
oto.par <- par(mfrow=c(2,1), mar=c(2,2,1,3), oma=c(2,2,2.5,2))

#DV-01
plot (DV1_dogleg$X86Sr ~ DV1_dogleg$distance, type = "l", ylab = "Isotopic Ratio", xlab = "Distance (um)", main= "DV_01 Sr+Ba", lwd=3, cex.axis=1.5, cex.main=1.5, cex.lab=1.5, ylim=c(0,4))
abline(h=3, col="black",lwd=2)
abline(h=0, col="turquoise",lwd=2)
par(new=T)
with(DV1_dogleg, plot(DV1_dogleg$X138Ba ~ DV1_dogleg$distance, type= "l", lty=2, lwd=2,col="turquoise", ylim= c(0,0.2), axes=F, xlab=NA, ylab=NA))
axis(side=4, cex.axis=1.5)
mtext(side=4, line=3, cex=1.5,"Ba:Ca Ratio (ummol/mol)", col="turquoise")
abline(v=c(DV1_doglegprop), lty=2, col="grey")

plot(DV1_dogleg$X86Sr ~ DV1_dogleg$distance, type = "l", ylab = "Isotopic Ratio", xlab = "Distance (um)", main= "DV_01 Sr+Zn", lwd=3, cex.axis=1.5, cex.main=1.5, cex.lab=1.5, ylim=c(0,4))
abline(h=3, col="black",lwd=2)
par(new=T)
with(DV1_dogleg, plot(DV1_dogleg$X66Zn ~ DV1_dogleg$distance, type= "l", lty=2, lwd=2,col="red", ylim= c(0,0.2), axes=F, xlab=NA, ylab=NA))
axis(side=4, cex.axis=1.5)
mtext(side=4, line=3, cex=1.5,"Zn:Ca Ratio (ummol/mol)", col="red")
abline(v=c(DV1_doglegprop),lty=2,col="grey")


#DV-02
plot (DV02_dogleg$X86Sr ~ DV02_dogleg$distance, type = "l", ylab = "Isotopic Ratio", xlab = "Distance (um)", main= "DV_02 Sr+Ba", lwd=3, cex.axis=1.5, cex.main=1.5, cex.lab=1.5, ylim=c(0,4))
abline(h=3, col="black",lwd=2)
abline(h=0, col="turquoise",lwd=2)
par(new=T)
with(DV02_dogleg, plot(DV02_dogleg$X138Ba ~ DV02_dogleg$distance, type= "l", lty=2, lwd=2,col="turquoise", ylim= c(0,0.2), axes=F, xlab=NA, ylab=NA))
axis(side=4, cex.axis=1.5)
mtext(side=4, line=3, cex=1.5,"Ba:Ca Ratio (ummol/mol)", col="turquoise")
abline(v=c(DV02_doglegprop),lty=2,col="grey")

plot(DV02_dogleg$X86Sr ~ DV02_dogleg$distance, type = "l", ylab = "Isotopic Ratio", xlab = "Distance (um)", main= "DV_02 Sr+Zn", lwd=3, cex.axis=1.5, cex.main=1.5, cex.lab=1.5, ylim=c(0,4))
abline(h=3, col="black",lwd=2)
par(new=T)
with(DV02_dogleg, plot(DV02_dogleg$X66Zn ~ DV02_dogleg$distance, type= "l", lty=2, lwd=2,col="red", ylim= c(0,0.2), axes=F, xlab=NA, ylab=NA))
axis(side=4, cex.axis=1.5)
mtext(side=4, line=3, cex=1.5,"Zn:Ca Ratio (ummol/mol)", col="red")
abline(v=c(DV02_doglegprop),lty=2,col="grey")


#DV-03
plot (DV03_dogleg$X86Sr ~ DV03_dogleg$distance, type = "l", ylab = "Isotopic Ratio", xlab = "Distance (um)", main= "DV_03 Sr+Ba", lwd=3, cex.axis=1.5, cex.main=1.5, cex.lab=1.5, ylim=c(0,4))
abline(h=3, col="black",lwd=2)
abline(h=0, col="turquoise",lwd=2)
par(new=T)
with(DV03_dogleg, plot(DV03_dogleg$X138Ba ~ DV03_dogleg$distance, type= "l", lty=2, lwd=2,col="turquoise", ylim= c(0,0.2), axes=F, xlab=NA, ylab=NA))
axis(side=4, cex.axis=1.5)
mtext(side=4, line=3, cex=1.5,"Ba:Ca Ratio (ummol/mol)", col="turquoise")
abline(v=c(DV03_doglegprop),lty=2,col="grey")

plot(DV03_dogleg$X86Sr ~ DV03_dogleg$distance, type = "l", ylab = "Isotopic Ratio", xlab = "Distance (um)", main= "DV_03 Sr+Zn", lwd=3, cex.axis=1.5, cex.main=1.5, cex.lab=1.5, ylim=c(0,4))
abline(h=3, col="black",lwd=2)
par(new=T)
with(DV03_dogleg, plot(DV03_dogleg$X66Zn ~ DV03_dogleg$distance, type= "l", lty=2, lwd=2,col="red", ylim= c(0,0.2), axes=F, xlab=NA, ylab=NA))
axis(side=4, cex.axis=1.5)
mtext(side=4, line=3, cex=1.5,"Zn:Ca Ratio (ummol/mol)", col="red")
abline(v=c(DV03_doglegprop),lty=2,col="grey")


#DV-04
plot (DV04_dogleg$X86Sr ~ DV04_dogleg$distance, type = "l", ylab = "Isotopic Ratio", xlab = "Distance (um)", main= "DV_04 Sr+Ba", lwd=3, cex.axis=1.5, cex.main=1.5, cex.lab=1.5, ylim=c(0,4))
abline(h=3, col="black",lwd=2)
abline(h=0, col="turquoise",lwd=2)
par(new=T)
with(DV04_dogleg, plot(DV04_dogleg$X138Ba ~ DV04_dogleg$distance, type= "l", lty=2, lwd=2,col="turquoise", ylim= c(0,0.2), axes=F, xlab=NA, ylab=NA))
axis(side=4, cex.axis=1.5)
mtext(side=4, line=3, cex=1.5,"Ba:Ca Ratio (ummol/mol)", col="turquoise")
abline(v=c(DV04_doglegprop),lty=2,col="grey")

plot(DV04_dogleg$X86Sr ~ DV04_dogleg$distance, type = "l", ylab = "Isotopic Ratio", xlab = "Distance (um)", main= "DV_04 Sr+Zn", lwd=3, cex.axis=1.5, cex.main=1.5, cex.lab=1.5, ylim=c(0,4))
abline(h=3, col="black",lwd=2)
 
par(new=T)
with(DV04_dogleg, plot(DV04_dogleg$X66Zn ~ DV04_dogleg$distance, type= "l", lty=2, lwd=2,col="red", ylim= c(0,0.2), axes=F, xlab=NA, ylab=NA))
axis(side=4, cex.axis=1.5)
mtext(side=4, line=3, cex=1.5,"Zn:Ca Ratio (ummol/mol)", col="red")
abline(v=c(DV04_doglegprop),lty=2,col="grey")


#DV-06
plot (DV06_dogleg$X86Sr ~ DV06_dogleg$distance, type = "l", ylab = "Isotopic Ratio", xlab = "Distance (um)", main= "DV_06 Sr+Ba", lwd=3, cex.axis=1.5, cex.main=1.5, cex.lab=1.5, ylim=c(0,4))
abline(h=3, col="black",lwd=2)
abline(h=0, col="turquoise",lwd=2)
par(new=T)
with(DV06_dogleg, plot(DV06_dogleg$X138Ba ~ DV06_dogleg$distance, type= "l", lty=2, lwd=2,col="turquoise", ylim= c(0,0.2), axes=F, xlab=NA, ylab=NA))
axis(side=4, cex.axis=1.5)
mtext(side=4, line=3, cex=1.5,"Ba:Ca Ratio (ummol/mol)", col="turquoise")
abline(v=c(DV06_doglegprop),lty=2,col="grey")

plot(DV06_dogleg$X86Sr ~ DV06_dogleg$distance, type = "l", ylab = "Isotopic Ratio", xlab = "Distance (um)", main= "DV_06 Sr+Zn", lwd=3, cex.axis=1.5, cex.main=1.5, cex.lab=1.5, ylim=c(0,4))
abline(h=3, col="black",lwd=2)
 
par(new=T)
with(DV06_dogleg, plot(DV06_dogleg$X66Zn ~ DV06_dogleg$distance, type= "l", lty=2, lwd=2,col="red", ylim= c(0,0.2), axes=F, xlab=NA, ylab=NA))
axis(side=4, cex.axis=1.5)
mtext(side=4, line=3, cex=1.5,"Zn:Ca Ratio (ummol/mol)", col="red")
abline(v=c(DV06_doglegprop),lty=2,col="grey")


#DV-07
plot (DV07_dogleg$X86Sr ~ DV07_dogleg$distance, type = "l", ylab = "Isotopic Ratio", xlab = "Distance (um)", main= "DV_07 Sr+Ba", lwd=3, cex.axis=1.5, cex.main=1.5, cex.lab=1.5, ylim=c(0,4))
abline(h=3, col="black",lwd=2)
abline(h=0, col="turquoise",lwd=2)
par(new=T)
with(DV07_dogleg, plot(DV07_dogleg$X138Ba ~ DV07_dogleg$distance, type= "l", lty=2, lwd=2,col="turquoise", ylim= c(0,0.2), axes=F, xlab=NA, ylab=NA))
axis(side=4, cex.axis=1.5)
mtext(side=4, line=3, cex=1.5,"Ba:Ca Ratio (ummol/mol)", col="turquoise")
abline(v=c(DV07_doglegprop),lty=2,col="grey")

plot(DV07_dogleg$X86Sr ~ DV07_dogleg$distance, type = "l", ylab = "Isotopic Ratio", xlab = "Distance (um)", main= "DV_07 Sr+Zn", lwd=3, cex.axis=1.5, cex.main=1.5, cex.lab=1.5, ylim=c(0,4))
abline(h=3, col="black",lwd=2)
 
par(new=T)
with(DV07_dogleg, plot(DV07_dogleg$X66Zn ~ DV07_dogleg$distance, type= "l", lty=2, lwd=2,col="red", ylim= c(0,0.2), axes=F, xlab=NA, ylab=NA))
axis(side=4, cex.axis=1.5)
mtext(side=4, line=3, cex=1.5,"Zn:Ca Ratio (ummol/mol)", col="red")
abline(v=c(DV07_doglegprop),lty=2,col="grey")


#DV-08
plot (DV08_dogleg$X86Sr ~ DV08_dogleg$distance, type = "l", ylab = "Isotopic Ratio", xlab = "Distance (um)", main= "DV_08 Sr+Ba", lwd=3, cex.axis=1.5, cex.main=1.5, cex.lab=1.5, ylim=c(0,4))
abline(h=3, col="black",lwd=2)
abline(h=0, col="turquoise",lwd=2)
par(new=T)
with(DV08_dogleg, plot(DV08_dogleg$X138Ba ~ DV08_dogleg$distance, type= "l", lty=2, lwd=2,col="turquoise", ylim= c(0,0.2), axes=F, xlab=NA, ylab=NA))
axis(side=4, cex.axis=1.5)
mtext(side=4, line=3, cex=1.5,"Ba:Ca Ratio (ummol/mol)", col="turquoise")
abline(v=c(DV08_doglegprop),lty=2,col="grey")

plot(DV08_dogleg$X86Sr ~ DV08_dogleg$distance, type = "l", ylab = "Isotopic Ratio", xlab = "Distance (um)", main= "DV_08 Sr+Zn", lwd=3, cex.axis=1.5, cex.main=1.5, cex.lab=1.5, ylim=c(0,4))
abline(h=3, col="black",lwd=2)
 
par(new=T)
with(DV08_dogleg, plot(DV08_dogleg$X66Zn ~ DV08_dogleg$distance, type= "l", lty=2, lwd=2,col="red", ylim= c(0,0.2), axes=F, xlab=NA, ylab=NA))
axis(side=4, cex.axis=1.5)
mtext(side=4, line=3, cex=1.5,"Zn:Ca Ratio (ummol/mol)", col="red")
abline(v=c(DV08_doglegprop),lty=2,col="grey")


#DV-09
plot (DV09_dogleg$X86Sr ~ DV09_dogleg$distance, type = "l", ylab = "Isotopic Ratio", xlab = "Distance (um)", main= "DV_09 Sr+Ba", lwd=3, cex.axis=1.5, cex.main=1.5, cex.lab=1.5, ylim=c(0,4))
abline(h=3, col="black",lwd=2)
abline(h=0, col="turquoise",lwd=2)
par(new=T)
with(DV09_dogleg, plot(DV09_dogleg$X138Ba ~ DV09_dogleg$distance, type= "l", lty=2, lwd=2,col="turquoise", ylim= c(0,0.2), axes=F, xlab=NA, ylab=NA))
axis(side=4, cex.axis=1.5)
mtext(side=4, line=3, cex=1.5,"Ba:Ca Ratio (ummol/mol)", col="turquoise")
abline(v=c(DV09_doglegprop),col="grey",lty=2)

plot(DV09_dogleg$X86Sr ~ DV09_dogleg$distance, type = "l", ylab = "Isotopic Ratio", xlab = "Distance (um)", main= "DV_09 Sr+Zn", lwd=3, cex.axis=1.5, cex.main=1.5, cex.lab=1.5, ylim=c(0,4))
abline(h=3, col="black",lwd=2)
 
par(new=T)
with(DV09_dogleg, plot(DV09_dogleg$X66Zn ~ DV09_dogleg$distance, type= "l", lty=2, lwd=2,col="red", ylim= c(0,0.2), axes=F, xlab=NA, ylab=NA))
axis(side=4, cex.axis=1.5)
mtext(side=4, line=3, cex=1.5,"Zn:Ca Ratio (ummol/mol)", col="red")
abline(v=c(DV09_doglegprop),lty=2,col="grey")

#DV-10
plot (DV10_dogleg$X86Sr ~ DV10_dogleg$distance, type = "l", ylab = "Isotopic Ratio", xlab = "Distance (um)", main= "DV_10 Sr+Ba", lwd=3, cex.axis=1.5, cex.main=1.5, cex.lab=1.5, ylim=c(0,4))
abline(h=3, col="black",lwd=2)
abline(h=0, col="turquoise",lwd=2)
par(new=T)
with(DV10_dogleg, plot(DV10_dogleg$X138Ba ~ DV10_dogleg$distance, type= "l", lty=2, lwd=2,col="turquoise", ylim= c(0,0.2), axes=F, xlab=NA, ylab=NA))
axis(side=4, cex.axis=1.5)
mtext(side=4, line=3, cex=1.5,"Ba:Ca Ratio (ummol/mol)", col="turquoise")
abline(v=c(DV10_doglegprop),lty=2,col="grey")

plot(DV10_dogleg$X86Sr ~ DV10_dogleg$distance, type = "l", ylab = "Isotopic Ratio", xlab = "Distance (um)", main= "DV_10 Sr+Zn", lwd=3, cex.axis=1.5, cex.main=1.5, cex.lab=1.5, ylim=c(0,4))
abline(h=3, col="black",lwd=2)
par(new=T)
with(DV10_dogleg, plot(DV10_dogleg$X66Zn ~ DV10_dogleg$distance, type= "l", lty=2, lwd=2,col="red", ylim= c(0,0.2), axes=F, xlab=NA, ylab=NA))
axis(side=4, cex.axis=1.5)
mtext(side=4, line=3, cex=1.5,"Zn:Ca Ratio (ummol/mol)", col="red")
abline(v=c(DV10_doglegprop),lty=2,col="grey")

#DV-11
plot (DV11_dogleg$X86Sr ~ DV11_dogleg$distance, type = "l", ylab = "Isotopic Ratio", xlab = "Distance (um)", main= "DV_11 Sr+Ba", lwd=3, cex.axis=1.5, cex.main=1.5, cex.lab=1.5, ylim=c(0,4))
abline(h=3, col="black",lwd=2)
abline(h=0, col="turquoise",lwd=2)
par(new=T)
with(DV11_dogleg, plot(DV11_dogleg$X138Ba ~ DV11_dogleg$distance, type= "l", lty=2, lwd=2,col="turquoise", ylim= c(0,0.2), axes=F, xlab=NA, ylab=NA))
axis(side=4, cex.axis=1.5)
mtext(side=4, line=3, cex=1.5,"Ba:Ca Ratio (ummol/mol)", col="turquoise")
abline(v=c(DV11_doglegprop),lty=2,col="grey")

plot(DV11_dogleg$X86Sr ~ DV11_dogleg$distance, type = "l", ylab = "Isotopic Ratio", xlab = "Distance (um)", main= "DV_11 Sr+Zn", lwd=3, cex.axis=1.5, cex.main=1.5, cex.lab=1.5, ylim=c(0,4))
abline(h=3, col="black",lwd=2)
 
par(new=T)
with(DV11_dogleg, plot(DV11_dogleg$X66Zn ~ DV11_dogleg$distance, type= "l", lty=2, lwd=2,col="red", ylim= c(0,0.2), axes=F, xlab=NA, ylab=NA))
axis(side=4, cex.axis=1.5)
mtext(side=4, line=3, cex=1.5,"Zn:Ca Ratio (ummol/mol)", col="red")
abline(v=c(DV11_doglegprop),lty=2,col="grey")


#DV-12
plot (DV12_dogleg$X86Sr ~ DV12_dogleg$distance, type = "l", ylab = "Isotopic Ratio", xlab = "Distance (um)", main= "DV_12 Sr+Ba", lwd=3, cex.axis=1.5, cex.main=1.5, cex.lab=1.5, ylim=c(0,4))
abline(h=3, col="black",lwd=2)
abline(h=0, col="turquoise",lwd=2)
par(new=T)
with(DV12_dogleg, plot(DV12_dogleg$X138Ba ~ DV12_dogleg$distance, type= "l", lty=2, lwd=2,col="turquoise", ylim= c(0,0.2), axes=F, xlab=NA, ylab=NA))
axis(side=4, cex.axis=1.5)
mtext(side=4, line=3, cex=1.5,"Ba:Ca Ratio (ummol/mol)", col="turquoise")
abline(v=c(DV12_doglegprop),lty=2,col="grey")

plot(DV12_dogleg$X86Sr ~ DV12_dogleg$distance, type = "l", ylab = "Isotopic Ratio", xlab = "Distance (um)", main= "DV_12 Sr+Zn", lwd=3, cex.axis=1.5, cex.main=1.5, cex.lab=1.5, ylim=c(0,4))
abline(h=3, col="black",lwd=2)
 
par(new=T)
with(DV12_dogleg, plot(DV12_dogleg$X66Zn ~ DV12_dogleg$distance, type= "l", lty=2, lwd=2,col="red", ylim= c(0,0.2), axes=F, xlab=NA, ylab=NA))
axis(side=4, cex.axis=1.5)
mtext(side=4, line=3, cex=1.5,"Zn:Ca Ratio (ummol/mol)", col="red")
abline(v=c(DV12_doglegprop),lty=2,col="grey")


#DV-13
plot (DV13_dogleg$X86Sr ~ DV13_dogleg$distance, type = "l", ylab = "Isotopic Ratio", xlab = "Distance (um)", main= "DV_13 Sr+Ba", lwd=3, cex.axis=1.5, cex.main=1.5, cex.lab=1.5, ylim=c(0,4))
abline(h=3, col="black",lwd=2)
abline(h=0, col="turquoise",lwd=2)
par(new=T)
with(DV13_dogleg, plot(DV13_dogleg$X138Ba ~ DV13_dogleg$distance, type= "l", lty=2, lwd=2,col="turquoise", ylim= c(0,0.2), axes=F, xlab=NA, ylab=NA))
axis(side=4, cex.axis=1.5)
mtext(side=4, line=3, cex=1.5,"Ba:Ca Ratio (ummol/mol)", col="turquoise")
abline(v=c(DV13_doglegprop),lty=2,col="grey")

plot(DV13_dogleg$X86Sr ~ DV13_dogleg$distance, type = "l", ylab = "Isotopic Ratio", xlab = "Distance (um)", main= "DV_13 Sr+Zn", lwd=3, cex.axis=1.5, cex.main=1.5, cex.lab=1.5, ylim=c(0,4))
abline(h=3, col="black",lwd=2)
 
par(new=T)
with(DV13_dogleg, plot(DV13_dogleg$X66Zn ~ DV13_dogleg$distance, type= "l", lty=2, lwd=2,col="red", ylim= c(0,0.2), axes=F, xlab=NA, ylab=NA))
axis(side=4, cex.axis=1.5)
mtext(side=4, line=3, cex=1.5,"Zn:Ca Ratio (ummol/mol)", col="red")
abline(v=c(DV13_doglegprop),lty=2,col="grey")


#DV-14
plot (DV14_dogleg$X86Sr ~ DV14_dogleg$distance, type = "l", ylab = "Isotopic Ratio", xlab = "Distance (um)", main= "DV_14 Sr+Ba", lwd=3, cex.axis=1.5, cex.main=1.5, cex.lab=1.5, ylim=c(0,4))
abline(h=3, col="black",lwd=2)
abline(h=0, col="turquoise",lwd=2)
par(new=T)
with(DV14_dogleg, plot(DV14_dogleg$X138Ba ~ DV14_dogleg$distance, type= "l", lty=2, lwd=2,col="turquoise", ylim= c(0,0.2), axes=F, xlab=NA, ylab=NA))
axis(side=4, cex.axis=1.5)
mtext(side=4, line=3, cex=1.5,"Ba:Ca Ratio (ummol/mol)", col="turquoise")
abline(v=c(DV14_doglegprop),lty=2,col="grey")

plot(DV14_dogleg$X86Sr ~ DV14_dogleg$distance, type = "l", ylab = "Isotopic Ratio", xlab = "Distance (um)", main= "DV_14 Sr+Zn", lwd=3, cex.axis=1.5, cex.main=1.5, cex.lab=1.5, ylim=c(0,4))
abline(h=3, col="black",lwd=2)
 
par(new=T)
with(DV14_dogleg, plot(DV14_dogleg$X66Zn ~ DV14_dogleg$distance, type= "l", lty=2, lwd=2,col="red", ylim= c(0,0.2), axes=F, xlab=NA, ylab=NA))
axis(side=4, cex.axis=1.5)
mtext(side=4, line=3, cex=1.5,"Zn:Ca Ratio (ummol/mol)", col="red")
abline(v=c(DV14_doglegprop),col="grey",lty=2)


#DV-15
plot (DV15_dogleg$X86Sr ~ DV15_dogleg$distance, type = "l", ylab = "Isotopic Ratio", xlab = "Distance (um)", main= "DV_15 Sr+Ba", lwd=3, cex.axis=1.5, cex.main=1.5, cex.lab=1.5, ylim=c(0,4))
abline(h=3, col="black",lwd=2)
abline(h=0, col="turquoise",lwd=2)
par(new=T)
with(DV15_dogleg, plot(DV15_dogleg$X138Ba ~ DV15_dogleg$distance, type= "l", lty=2, lwd=2,col="turquoise", ylim= c(0,0.2), axes=F, xlab=NA, ylab=NA))
axis(side=4, cex.axis=1.5)
mtext(side=4, line=3, cex=1.5,"Ba:Ca Ratio (ummol/mol)", col="turquoise")
abline(v=c(DV15_doglegprop),col="grey",lty=2)

plot(DV15_dogleg$X86Sr ~ DV15_dogleg$distance, type = "l", ylab = "Isotopic Ratio", xlab = "Distance (um)", main= "DV_15 Sr+Zn", lwd=3, cex.axis=1.5, cex.main=1.5, cex.lab=1.5, ylim=c(0,4))
abline(h=3, col="black",lwd=2)
 
par(new=T)
with(DV15_dogleg, plot(DV15_dogleg$X66Zn ~ DV15_dogleg$distance, type= "l", lty=2, lwd=2,col="red", ylim= c(0,0.2), axes=F, xlab=NA, ylab=NA))
axis(side=4, cex.axis=1.5)
mtext(side=4, line=3, cex=1.5,"Zn:Ca Ratio (ummol/mol)", col="red")
abline(v=c(DV15_doglegprop),lty=2,col="grey")


#DV-16
plot (DV16_dogleg$X86Sr ~ DV16_dogleg$distance, type = "l", ylab = "Isotopic Ratio", xlab = "Distance (um)", main= "DV_16 Sr+Ba", lwd=3, cex.axis=1.5, cex.main=1.5, cex.lab=1.5, ylim=c(0,4))
abline(h=3, col="black",lwd=2)
abline(h=0, col="turquoise",lwd=2)
par(new=T)
with(DV16_dogleg, plot(DV16_dogleg$X138Ba ~ DV16_dogleg$distance, type= "l", lty=2, lwd=2,col="turquoise", ylim= c(0,0.2), axes=F, xlab=NA, ylab=NA))
axis(side=4, cex.axis=1.5)
mtext(side=4, line=3, cex=1.5,"Ba:Ca Ratio (ummol/mol)", col="turquoise")
abline(v=c(DV16_doglegprop),lty=2,col="grey")

plot(DV16_dogleg$X86Sr ~ DV16_dogleg$distance, type = "l", ylab = "Isotopic Ratio", xlab = "Distance (um)", main= "DV_16 Sr+Zn", lwd=3, cex.axis=1.5, cex.main=1.5, cex.lab=1.5, ylim=c(0,4))
abline(h=3, col="black",lwd=2)
 
par(new=T)
with(DV16_dogleg, plot(DV16_dogleg$X66Zn ~ DV16_dogleg$distance, type= "l", lty=2, lwd=2,col="red", ylim= c(0,0.2), axes=F, xlab=NA, ylab=NA))
axis(side=4, cex.axis=1.5)
mtext(side=4, line=3, cex=1.5,"Zn:Ca Ratio (ummol/mol)", col="red")
abline(v=c(DV16_doglegprop),lty=2,col="grey")


#DV-17
plot (DV17_dogleg$X86Sr ~ DV17_dogleg$distance, type = "l", ylab = "Isotopic Ratio", xlab = "Distance (um)", main= "DV_17 Sr+Ba", lwd=3, cex.axis=1.5, cex.main=1.5, cex.lab=1.5, ylim=c(0,4))
abline(h=3, col="black",lwd=2)
abline(h=0, col="turquoise",lwd=2)
par(new=T)
with(DV17_dogleg, plot(DV17_dogleg$X138Ba ~ DV17_dogleg$distance, type= "l", lty=2, lwd=2,col="turquoise", ylim= c(0,0.2), axes=F, xlab=NA, ylab=NA))
axis(side=4, cex.axis=1.5)
mtext(side=4, line=3, cex=1.5,"Ba:Ca Ratio (ummol/mol)", col="turquoise")
abline(v=c(DV17_doglegprop),lty=2,col="grey")

plot(DV17_dogleg$X86Sr ~ DV17_dogleg$distance, type = "l", ylab = "Isotopic Ratio", xlab = "Distance (um)", main= "DV_17 Sr+Zn", lwd=3, cex.axis=1.5, cex.main=1.5, cex.lab=1.5, ylim=c(0,4))
abline(h=3, col="black",lwd=2)
 
par(new=T)
with(DV17_dogleg, plot(DV17_dogleg$X66Zn ~ DV17_dogleg$distance, type= "l", lty=2, lwd=2,col="red", ylim= c(0,0.2), axes=F, xlab=NA, ylab=NA))
axis(side=4, cex.axis=1.5)
mtext(side=4, line=3, cex=1.5,"Zn:Ca Ratio (ummol/mol)", col="red")
abline(v=c(DV17_doglegprop),lty=2,col="grey")


#DV-22
plot (DV22_dogleg$X86Sr ~ DV22_dogleg$distance, type = "l", ylab = "Isotopic Ratio", xlab = "Distance (um)", main= "DV_22 Sr+Ba", lwd=3, cex.axis=1.5, cex.main=1.5, cex.lab=1.5, ylim=c(0,4))
abline(h=3, col="black",lwd=2)
abline(h=0, col="turquoise",lwd=2)
par(new=T)
with(DV22_dogleg, plot(DV22_dogleg$X138Ba ~ DV22_dogleg$distance, type= "l", lty=2, lwd=2,col="turquoise", ylim= c(0,0.2), axes=F, xlab=NA, ylab=NA))
axis(side=4, cex.axis=1.5)
mtext(side=4, line=3, cex=1.5,"Ba:Ca Ratio (ummol/mol)", col="turquoise")
abline(v=c(DV22_doglegprop),lty=2,col="grey")

plot(DV22_dogleg$X86Sr ~ DV22_dogleg$distance, type = "l", ylab = "Isotopic Ratio", xlab = "Distance (um)", main= "DV_22 Sr+Zn", lwd=3, cex.axis=1.5, cex.main=1.5, cex.lab=1.5, ylim=c(0,4))
abline(h=3, col="black",lwd=2)
 
par(new=T)
with(DV22_dogleg, plot(DV22_dogleg$X66Zn ~ DV22_dogleg$distance, type= "l", lty=2, lwd=2,col="red", ylim= c(0,0.2), axes=F, xlab=NA, ylab=NA))
axis(side=4, cex.axis=1.5)
mtext(side=4, line=3, cex=1.5,"Zn:Ca Ratio (ummol/mol)", col="red")
abline(v=c(DV22_doglegprop),lty=2,col="grey")


#DV-25
plot (DV25_dogleg$X86Sr ~ DV25_dogleg$distance, type = "l", ylab = "Isotopic Ratio", xlab = "Distance (um)", main= "DV_25 Sr+Ba", lwd=3, cex.axis=1.5, cex.main=1.5, cex.lab=1.5, ylim=c(0,4))
abline(h=3, col="black",lwd=2)
abline(h=0, col="turquoise",lwd=2)
par(new=T)
with(DV25_dogleg, plot(DV25_dogleg$X138Ba ~ DV25_dogleg$distance, type= "l", lty=2, lwd=2,col="turquoise", ylim= c(0,0.2), axes=F, xlab=NA, ylab=NA))
axis(side=4, cex.axis=1.5)
mtext(side=4, line=3, cex=1.5,"Ba:Ca Ratio (ummol/mol)", col="turquoise")
abline(v=c(DV25_doglegprop),lty=2,col="grey")

plot(DV25_dogleg$X86Sr ~ DV25_dogleg$distance, type = "l", ylab = "Isotopic Ratio", xlab = "Distance (um)", main= "DV_25 Sr+Zn", lwd=3, cex.axis=1.5, cex.main=1.5, cex.lab=1.5, ylim=c(0,4))
abline(h=3, col="black",lwd=2)
 
par(new=T)
with(DV25_dogleg, plot(DV25_dogleg$X66Zn ~ DV25_dogleg$distance, type= "l", lty=2, lwd=2,col="red", ylim= c(0,0.2), axes=F, xlab=NA, ylab=NA))
axis(side=4, cex.axis=1.5)
mtext(side=4, line=3, cex=1.5,"Zn:Ca Ratio (ummol/mol)", col="red")
abline(v=c(DV25_doglegprop),lty=2,col="grey")


#DV-26
plot (DV26_dogleg$X86Sr ~ DV26_dogleg$distance, type = "l", ylab = "Isotopic Ratio", xlab = "Distance (um)", main= "DV_26 Sr+Ba", lwd=3, cex.axis=1.5, cex.main=1.5, cex.lab=1.5, ylim=c(0,4))
abline(h=3, col="black",lwd=2)
abline(h=0, col="turquoise",lwd=2)
par(new=T)
with(DV26_dogleg, plot(DV26_dogleg$X138Ba ~ DV26_dogleg$distance, type= "l", lty=2, lwd=2,col="turquoise", ylim= c(0,0.2), axes=F, xlab=NA, ylab=NA))
axis(side=4, cex.axis=1.5)
mtext(side=4, line=3, cex=1.5,"Ba:Ca Ratio (ummol/mol)", col="turquoise")
abline(v=c(DV26_doglegprop),lty=2,col="grey")

plot(DV26_dogleg$X86Sr ~ DV26_dogleg$distance, type = "l", ylab = "Isotopic Ratio", xlab = "Distance (um)", main= "DV_26 Sr+Zn", lwd=3, cex.axis=1.5, cex.main=1.5, cex.lab=1.5, ylim=c(0,4))
abline(h=3, col="black",lwd=2)
 
par(new=T)
with(DV26_dogleg, plot(DV26_dogleg$X66Zn ~ DV26_dogleg$distance, type= "l", lty=2, lwd=2,col="red", ylim= c(0,0.2), axes=F, xlab=NA, ylab=NA))
axis(side=4, cex.axis=1.5)
mtext(side=4, line=3, cex=1.5,"Zn:Ca Ratio (ummol/mol)", col="red")
abline(v=c(DV26_doglegprop),lty=2,col="grey")


#DV-28
plot (DV28_dogleg$X86Sr ~ DV28_dogleg$distance, type = "l", ylab = "Isotopic Ratio", xlab = "Distance (um)", main= "DV_28 Sr+Ba", lwd=3, cex.axis=1.5, cex.main=1.5, cex.lab=1.5, ylim=c(0,4))
abline(h=3, col="black",lwd=2)
abline(h=0, col="turquoise",lwd=2)
par(new=T)
with(DV28_dogleg, plot(DV28_dogleg$X138Ba ~ DV28_dogleg$distance, type= "l", lty=2, lwd=2,col="turquoise", ylim= c(0,0.2), axes=F, xlab=NA, ylab=NA))
axis(side=4, cex.axis=1.5)
mtext(side=4, line=3, cex=1.5,"Ba:Ca Ratio (ummol/mol)", col="turquoise")
abline(v=c(DV28_doglegprop),lty=2,col="grey")

plot(DV28_dogleg$X86Sr ~ DV28_dogleg$distance, type = "l", ylab = "Isotopic Ratio", xlab = "Distance (um)", main= "DV_28 Sr+Zn", lwd=3, cex.axis=1.5, cex.main=1.5, cex.lab=1.5, ylim=c(0,4))
abline(h=3, col="black",lwd=2)
 
par(new=T)
with(DV28_dogleg, plot(DV28_dogleg$X66Zn ~ DV28_dogleg$distance, type= "l", lty=2, lwd=2,col="red", ylim= c(0,0.2), axes=F, xlab=NA, ylab=NA))
axis(side=4, cex.axis=1.5)
mtext(side=4, line=3, cex=1.5,"Zn:Ca Ratio (ummol/mol)", col="red")
abline(v=c(DV28_doglegprop),lty=2,col="grey")


#DV-29
plot (DV29_dogleg$X86Sr ~ DV29_dogleg$distance, type = "l", ylab = "Isotopic Ratio", xlab = "Distance (um)", main= "DV_29 Sr+Ba", lwd=3, cex.axis=1.5, cex.main=1.5, cex.lab=1.5, ylim=c(0,4))
abline(h=3, col="black",lwd=2)
abline(h=0, col="turquoise",lwd=2)
par(new=T)
with(DV29_dogleg, plot(DV29_dogleg$X138Ba ~ DV29_dogleg$distance, type= "l", lty=2, lwd=2,col="turquoise", ylim= c(0,0.2), axes=F, xlab=NA, ylab=NA))
axis(side=4, cex.axis=1.5)
mtext(side=4, line=3, cex=1.5,"Ba:Ca Ratio (ummol/mol)", col="turquoise")
abline(v=c(DV29_doglegprop),lty=2,col="grey")

plot(DV29_dogleg$X86Sr ~ DV29_dogleg$distance, type = "l", ylab = "Isotopic Ratio", xlab = "Distance (um)", main= "DV_29 Sr+Zn", lwd=3, cex.axis=1.5, cex.main=1.5, cex.lab=1.5, ylim=c(0,4))
abline(h=3, col="black",lwd=2)
 
par(new=T)
with(DV29_dogleg, plot(DV29_dogleg$X66Zn ~ DV29_dogleg$distance, type= "l", lty=2, lwd=2,col="red", ylim= c(0,0.2), axes=F, xlab=NA, ylab=NA))
axis(side=4, cex.axis=1.5)
mtext(side=4, line=3, cex=1.5,"Zn:Ca Ratio (ummol/mol)", col="red")
abline(v=c(DV29_doglegprop),lty=2,col="grey")


dev.off()
par(oto.par)
