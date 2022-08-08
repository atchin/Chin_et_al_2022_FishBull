## sequence for applying annuli ratios

## read in calculated transect ratios
# dogleg <- read.csv("annuli_ratios.csv", header=T)
# val.dogleg <- dogleg[,3:11]
# val.dogleg <- as.matrix(val.dogleg)

## review transect dogleg that is being used for transect
dogleg[9,]

## halve the transect along the core, and identify the dogleg side
# DV10 = left
ratio <- laser[10,4] # this is the core:total distance ratio
ratio <- max(DV_10_redo.roll$distance)*ratio

# explore DV.roll file to approximate cutoff
ratio
DV10_dogleg <- DV_10_redo.roll[1:1668,]

## for left: it's reverse, so...
#	- subtract the max from the halved vector, multiply by -1
#	- sort() distance from highest to lowest
#	- pull out ratios from matrix row
#		annuulratios[#,]	
#	- plot the dogleg

#	- subtract the max from the halved vector, multiply by -1

DV10_dogleg$distance <- (DV10_dogleg$distance - max(DV10_dogleg$distance))*-1
DV10_dogleg

#	- order() distance from highest to lowest
DV10_dogleg <- DV10_dogleg[order(DV10_dogleg$distance),]
head(DV10_dogleg)
 
#	- pull out ratios from matrix row, multiply by max(transect)
dogleg[9,] # copy values
DV10_doglegprop <- c(0, 0.144763, 0.236029, 0.394019, 0.510069, 0.707038, 0.828653, 0.927646,1)

DV10_doglegprop <- DV10_doglegprop*max(DV10_dogleg$distance)
DV10_doglegprop

#	- plot the dogleg
plot (DV10_dogleg$X86Sr ~ DV10_dogleg$distance, type = "l", ylab = "Isotopic Ratio", xlab = "Distance (um)", main= "DV_10 Sr+Ba", lwd=3, cex.axis=1.5, cex.main=1.5, cex.lab=1.5, ylim=c(0,4))
par(new=T)
with(DV10_dogleg, plot(DV10_dogleg$X138Ba ~ DV10_dogleg$distance, type= "l", lty=2, lwd=2,col="turquoise", ylim= c(0,0.2), axes=F, xlab=NA, ylab=NA))
axis(side=4, cex.axis=1.5)
mtext(side=4, line=3, cex=1.5,"Ba:Ca Ratio (ummol/mol)", col="turquoise")
abline(v=c(DV10_doglegprop))



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