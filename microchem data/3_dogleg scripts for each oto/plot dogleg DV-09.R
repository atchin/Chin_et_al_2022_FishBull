## sequence for applying annuli ratios

## read in calculated transect ratios
# dogleg <- read.csv("annuli_ratios.csv", header=T)
# val.dogleg <- dogleg[,3:11]
# val.dogleg <- as.matrix(val.dogleg)

## review transect dogleg that is being used for transect
dogleg[8,]

## halve the transect along the core, and identify the dogleg side
# DV09 = left
ratio <- laser[9,4] # this is the core:total distance ratio
ratio <- max(DV_09.roll$distance)*ratio

# explore DV.roll file to approximate cutoff
ratio
View(DV_09_roll)
DV09_dogleg <- DV_09.roll[1:874,]

## for left: it's reverse, so...
#	- subtract the max from the halved vector, multiply by -1
#	- sort() distance from highest to lowest
#	- pull out ratios from matrix row
#		annuulratios[#,]	
#	- plot the dogleg

#	- subtract the max from the halved vector, multiply by -1

DV09_dogleg$distance <- (DV09_dogleg$distance - max(DV09_dogleg$distance))*-1
head(DV09_dogleg)

#	- order() distance from highest to lowest
DV09_dogleg <- DV09_dogleg[order(DV09_dogleg$distance),]
head(DV09_dogleg)
 
#	- pull out ratios from matrix row, multiply by max(transect)
dogleg[8,] # copy values
DV09_doglegprop <- c(0, 0.223515, 0.404349, 0.451409, 0.506727, 0.619231, 0.620409, 0.745937,0.873957, 0.948981,1)

DV09_doglegprop <- DV09_doglegprop*max(DV09_dogleg$distance)
DV09_doglegprop

#	- plot the dogleg
plot (DV09_dogleg$X86Sr ~ DV09_dogleg$distance, type = "l", ylab = "Isotopic Ratio", xlab = "Distance (um)", main= "DV_09 Sr+Ba", lwd=3, cex.axis=1.5, cex.main=1.5, cex.lab=1.5, ylim=c(0,4))
par(new=T)
with(DV09_dogleg, plot(DV09_dogleg$X138Ba ~ DV09_dogleg$distance, type= "l", lty=2, lwd=2,col="turquoise", ylim= c(0,0.2), axes=F, xlab=NA, ylab=NA))
axis(side=4, cex.axis=1.5)
mtext(side=4, line=3, cex=1.5,"Ba:Ca Ratio (ummol/mol)", col="turquoise")
abline(v=c(DV09_doglegprop))



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