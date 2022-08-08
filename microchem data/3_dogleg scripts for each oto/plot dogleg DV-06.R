## sequence for applying annuli ratios

## read in calculated transect ratios
# dogleg <- read.csv("annuli_ratios.csv", header=T)
# val.dogleg <- dogleg[,3:11]
# val.dogleg <- as.matrix(val.dogleg)

## review transect dogleg that is being used for transect
dogleg[5,]

## halve the transect along the core, and identify the dogleg side
# DV06 = left
ratio <- laser[6,4] # this is the core:total distance ratio
ratio <- max(DV_06.roll$distance)*ratio

# explore DV.roll file to approximate cutoff
ratio
DV06_dogleg <- DV_06.roll[1:882,]

## for left: it's reverse, so...
#	- subtract the max from the halved vector, multiply by -1
#	- sort() distance from highest to lowest
#	- pull out ratios from matrix row
#		annuulratios[#,]	
#	- plot the dogleg

#	- subtract the max from the halved vector, multiply by -1

DV06_dogleg$distance <- (DV06_dogleg$distance - max(DV06_dogleg$distance))*-1
DV06_dogleg

#	- order() distance from highest to lowest
DV06_dogleg <- DV06_dogleg[order(DV06_dogleg$distance),]
head(DV06_dogleg)
 
#	- pull out ratios from matrix row, multiply by max(transect)
val.dogleg[5,] # copy values
DV06_doglegprop <- c(0,  0.380946, 0.5843430, 0.7028960, 0.8000560, 0.9180610, 1.0000000)

DV06_doglegprop <- DV06_doglegprop*max(DV06_dogleg$distance)
DV06_doglegprop

#	- plot the dogleg
plot (DV06_dogleg$X86Sr ~ DV06_dogleg$distance, type = "l", ylab = "Isotopic Ratio", xlab = "Distance (um)", main= "DV_06 Sr+Ba", lwd=3, cex.axis=1.5, cex.main=1.5, cex.lab=1.5, ylim=c(0,4))
par(new=T)
with(DV06_dogleg, plot(DV06_dogleg$X138Ba ~ DV06_dogleg$distance, type= "l", lty=2, lwd=2,col="turquoise", ylim= c(0,0.2), axes=F, xlab=NA, ylab=NA))
axis(side=4, cex.axis=1.5)
mtext(side=4, line=3, cex=1.5,"Ba:Ca Ratio (ummol/mol)", col="turquoise")
abline(v=c(DV06_doglegprop))



#	- abline(v=annuli ratios row*max(dogleg))
#		OR... calculate the abline values beforehand?

## for right:
#	-substract first value from halved vector
#	- pull out ratios from matrix row
#		annuulratios[#,]	
#	- plot the dogleg
#	- 
#	- abline(v=annuli ratios row*max(dogleg))
#		OR... calculate the abline values beforehand?