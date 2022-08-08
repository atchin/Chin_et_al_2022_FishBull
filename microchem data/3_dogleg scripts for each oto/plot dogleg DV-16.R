## sequence for applying annuli ratios

## read in calculated transect ratios
# dogleg <- read.csv("annuli_ratios.csv", header=T)
# val.dogleg <- dogleg[,3:11]
# val.dogleg <- as.matrix(val.dogleg)

## review transect dogleg that is being used for transect
dogleg
dogleg[15,]

## halve the transect along the core, and identify the dogleg side
# DV16 = right
ratio <- laser[16,4] # this is the core:total distance ratio
ratio <- max(DV_16_redo.roll$distance)*ratio

# explore DV.roll file to approximate cutoff
ratio
DV16_dogleg <- DV_16_redo.roll[1391:2962,]

## for right:
#	-substract first value from halved vector
DV16_dogleg$distance <- DV16_dogleg$distance - DV16_dogleg$distance[1]
head(DV16_dogleg)
 
#	- pull out ratios from matrix row, multiply by max(transect)
dogleg[15,] # copy values
DV16_doglegprop <- c(0, 0.336159, 0.410196, 0.558977, 0.720768, 0.876055,     1)

DV16_doglegprop <- DV16_doglegprop*max(DV16_dogleg$distance)
DV16_doglegprop

#	- plot the dogleg
plot (DV16_dogleg$X86Sr ~ DV16_dogleg$distance, type = "l", ylab = "Isotopic Ratio", xlab = "Distance (um)", main= "DV_16 Sr+Ba", lwd=3, cex.axis=1.5, cex.main=1.5, cex.lab=1.5, ylim=c(0,4))
par(new=T)
with(DV16_dogleg, plot(DV16_dogleg$X138Ba ~ DV16_dogleg$distance, type= "l", lty=2, lwd=2,col="turquoise", ylim= c(0,0.2), axes=F, xlab=NA, ylab=NA))
axis(side=4, cex.axis=1.5)
mtext(side=4, line=3, cex=1.5,"Ba:Ca Ratio (ummol/mol)", col="turquoise")
abline(v=c(DV16_doglegprop))



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