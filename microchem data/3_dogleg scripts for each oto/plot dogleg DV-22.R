## sequence for applying annuli ratios

## read in calculated transect ratios
# dogleg <- read.csv("annuli_ratios.csv", header=T)
# val.dogleg <- dogleg[,3:11]
# val.dogleg <- as.matrix(val.dogleg)

## review transect dogleg that is being used for transect
dogleg
dogleg[19,]

## halve the transect along the core, and identify the dogleg side
# DV22 = right
ratio <- laser[22,4] # this is the core:total distance ratio
ratio <- max(DV_22.roll$distance)*ratio

# explore DV.roll file to approximate cutoff
ratio
DV22_dogleg <- DV_22.roll[1575:2665,]

## for right:
#	-substract first value from halved vector
DV22_dogleg$distance <- DV22_dogleg$distance - DV22_dogleg$distance[1]
head(DV22_dogleg)
 
#	- pull out ratios from matrix row, multiply by max(transect)
dogleg[19,] # copy values
DV22_doglegprop <- c(0, 0.109655, 0.281147, 0.348666, 0.466733, 0.591813, 0.83354,1)

DV22_doglegprop <- DV22_doglegprop*max(DV22_dogleg$distance)
DV22_doglegprop

#	- plot the dogleg
plot (DV22_dogleg$X86Sr ~ DV22_dogleg$distance, type = "l", ylab = "Isotopic Ratio", xlab = "Distance (um)", main= "DV_22 Sr+Ba", lwd=3, cex.axis=1.5, cex.main=1.5, cex.lab=1.5, ylim=c(0,4))
par(new=T)
with(DV22_dogleg, plot(DV22_dogleg$X138Ba ~ DV22_dogleg$distance, type= "l", lty=2, lwd=2,col="turquoise", ylim= c(0,0.2), axes=F, xlab=NA, ylab=NA))
axis(side=4, cex.axis=1.5)
mtext(side=4, line=3, cex=1.5,"Ba:Ca Ratio (ummol/mol)", col="turquoise")
abline(v=c(DV22_doglegprop))



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