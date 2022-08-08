## sequence for applying annuli ratios

## read in calculated transect ratios
# dogleg <- read.csv("annuli_ratios.csv", header=T)
# val.dogleg <- dogleg[,3:11]
# val.dogleg <- as.matrix(val.dogleg)

## review transect dogleg that is being used for transect
dogleg[12,]

## halve the transect along the core, and identify the dogleg side
# DV13 = left
ratio <- laser[13,4] # this is the core:total distance ratio
ratio <- max(DV_13.roll$distance)*ratio

# explore DV.roll file to approximate cutoff
ratio
DV13_dogleg <- DV_13.roll[1:1296,]

## for left: it's reverse, so...
#	- subtract the max from the halved vector, multiply by -1
#	- sort() distance from highest to lowest
#	- pull out ratios from matrix row
#		annuulratios[#,]	
#	- plot the dogleg

#	- subtract the max from the halved vector, multiply by -1

DV13_dogleg$distance <- (DV13_dogleg$distance - max(DV13_dogleg$distance))*-1
DV13_dogleg

#	- order() distance from highest to lowest
DV13_dogleg <- DV13_dogleg[order(DV13_dogleg$distance),]
head(DV13_dogleg)
 
#	- pull out ratios from matrix row, multiply by max(transect)
dogleg[12,] # copy values
DV13_doglegprop <- c(0, 0.390527, 0.626817, 0.804074, 0.935613,     1)

DV13_doglegprop <- DV13_doglegprop*max(DV13_dogleg$distance)
DV13_doglegprop

#	- plot the dogleg
plot (DV13_dogleg$X86Sr ~ DV13_dogleg$distance, type = "l", ylab = "Isotopic Ratio", xlab = "Distance (um)", main= "DV_13 Sr+Ba", lwd=3, cex.axis=1.5, cex.main=1.5, cex.lab=1.5, ylim=c(0,4))
par(new=T)
with(DV13_dogleg, plot(DV13_dogleg$X138Ba ~ DV13_dogleg$distance, type= "l", lty=2, lwd=2,col="turquoise", ylim= c(0,0.2), axes=F, xlab=NA, ylab=NA))
axis(side=4, cex.axis=1.5)
mtext(side=4, line=3, cex=1.5,"Ba:Ca Ratio (ummol/mol)", col="turquoise")
abline(v=c(DV13_doglegprop))



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