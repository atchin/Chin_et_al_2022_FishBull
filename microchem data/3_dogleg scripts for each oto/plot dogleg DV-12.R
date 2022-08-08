## sequence for applying annuli ratios

## read in calculated transect ratios
# dogleg <- read.csv("annuli_ratios.csv", header=T)
# val.dogleg <- dogleg[,3:11]
# val.dogleg <- as.matrix(val.dogleg)

## review transect dogleg that is being used for transect
dogleg[11,]

## halve the transect along the core, and identify the dogleg side
# DV12 = left
ratio <- laser[12,4] # this is the core:total distance ratio
ratio <- max(DV_12_redo.roll$distance)*ratio

# explore DV.roll file to approximate cutoff
ratio
DV12_dogleg <- DV_12_redo.roll[1:1733,]

## for left: it's reverse, so...
#	- subtract the max from the halved vector, multiply by -1
#	- sort() distance from highest to lowest
#	- pull out ratios from matrix row
#		annuulratios[#,]	
#	- plot the dogleg

#	- subtract the max from the halved vector, multiply by -1

DV12_dogleg$distance <- (DV12_dogleg$distance - max(DV12_dogleg$distance))*-1
DV12_dogleg$distance

#	- order() distance from highest to lowest
DV12_dogleg <- DV12_dogleg[order(DV12_dogleg$distance),]
head(DV12_dogleg)
 
#	- pull out ratios from matrix row, multiply by max(transect)
dogleg[11,] # copy values
DV12_doglegprop <- c(0, 0.288077, 0.478971, 0.543758, 0.622868, 0.761762, 0.837462,0.930892,     1)

DV12_doglegprop <- DV12_doglegprop*max(DV12_dogleg$distance)
DV12_doglegprop

#	- plot the dogleg
plot (DV12_dogleg$X86Sr ~ DV12_dogleg$distance, type = "l", ylab = "Isotopic Ratio", xlab = "Distance (um)", main= "DV_12 Sr+Ba", lwd=3, cex.axis=1.5, cex.main=1.5, cex.lab=1.5, ylim=c(0,4))
par(new=T)
with(DV12_dogleg, plot(DV12_dogleg$X138Ba ~ DV12_dogleg$distance, type= "l", lty=2, lwd=2,col="turquoise", ylim= c(0,0.2), axes=F, xlab=NA, ylab=NA))
axis(side=4, cex.axis=1.5)
mtext(side=4, line=3, cex=1.5,"Ba:Ca Ratio (ummol/mol)", col="turquoise")
abline(v=c(DV12_doglegprop))



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