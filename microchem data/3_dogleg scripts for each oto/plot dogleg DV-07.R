## sequence for applying annuli ratios

## read in calculated transect ratios
# dogleg <- read.csv("annuli_ratios.csv", header=T)
# val.dogleg <- dogleg[,3:11]
# val.dogleg <- as.matrix(val.dogleg)

## review transect dogleg that is being used for transect
dogleg[6,]

## halve the transect along the core, and identify the dogleg side
# DV07 = right
ratio <- laser[7,4] # this is the core:total distance ratio
ratio <- max(DV_07.roll$distance)*ratio

# explore DV.roll file to approximate cutoff
ratio
DV07_dogleg <- DV_07.roll[943:2000,]


## for right:
#	-substract first value from halved vector
DV07_dogleg$distance <- DV07_dogleg$distance - DV07_dogleg$distance[1]
DV07_dogleg

 
#	- pull out ratios from matrix row, multiply by max(transect)
val.dogleg[6,] # copy values
DV07_doglegprop <- c(0,  0.299285, 0.4601050, 0.6248900, 0.7520480, 0.8570590, 0.9523530, 1.0000000)

DV07_doglegprop <- DV07_doglegprop*max(DV07_dogleg$distance)
DV07_doglegprop

#	- plot the dogleg
plot (DV07_dogleg$X86Sr ~ DV07_dogleg$distance, type = "l", ylab = "Isotopic Ratio", xlab = "Distance (um)", main= "DV_07 Sr+Ba", lwd=3, cex.axis=1.5, cex.main=1.5, cex.lab=1.5, ylim=c(0,4))
par(new=T)
with(DV07_dogleg, plot(DV07_dogleg$X138Ba ~ DV07_dogleg$distance, type= "l", lty=2, lwd=2,col="turquoise", ylim= c(0,0.2), axes=F, xlab=NA, ylab=NA))
axis(side=4, cex.axis=1.5)
mtext(side=4, line=3, cex=1.5,"Ba:Ca Ratio (ummol/mol)", col="turquoise")
abline(v=c(DV07_doglegprop))




