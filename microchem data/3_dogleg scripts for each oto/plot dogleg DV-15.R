## sequence for applying annuli ratios

## read in calculated transect ratios
# dogleg <- read.csv("annuli_ratios.csv", header=T)
# val.dogleg <- dogleg[,3:11]
# val.dogleg <- as.matrix(val.dogleg)

## review transect dogleg that is being used for transect
dogleg
dogleg[14,]

## halve the transect along the core, and identify the dogleg side
# DV15 = right
ratio <- laser[15,4] # this is the core:total distance ratio
ratio <- max(DV_15.roll$distance)*ratio

# explore DV.roll file to approximate cutoff
ratio
DV15_dogleg <- DV_15.roll[1326:2385,]

## for right:
#	-substract first value from halved vector
DV15_dogleg$distance <- DV15_dogleg$distance - DV15_dogleg$distance[1]
head(DV15_dogleg)
 
#	- pull out ratios from matrix row, multiply by max(transect)
dogleg[14,] # copy values
DV15_doglegprop <- c(0, 0.406884, 0.473698, 0.605261, 0.777332,     1)

DV15_doglegprop <- DV15_doglegprop*max(DV15_dogleg$distance)
DV15_doglegprop

#	- plot the dogleg
plot (DV15_dogleg$X86Sr ~ DV15_dogleg$distance, type = "l", ylab = "Isotopic Ratio", xlab = "Distance (um)", main= "DV_15 Sr+Ba", lwd=3, cex.axis=1.5, cex.main=1.5, cex.lab=1.5, ylim=c(0,4))
par(new=T)
with(DV15_dogleg, plot(DV15_dogleg$X138Ba ~ DV15_dogleg$distance, type= "l", lty=2, lwd=2,col="turquoise", ylim= c(0,0.2), axes=F, xlab=NA, ylab=NA))
axis(side=4, cex.axis=1.5)
mtext(side=4, line=3, cex=1.5,"Ba:Ca Ratio (ummol/mol)", col="turquoise")
abline(v=c(DV15_doglegprop))



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