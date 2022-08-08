## sequence for applying annuli ratios

## read in calculated transect ratios
# dogleg <- read.csv("annuli_ratios.csv", header=T)
# val.dogleg <- dogleg[,3:11]
# val.dogleg <- as.matrix(val.dogleg)

## review transect dogleg that is being used for transect
dogleg[13,]

## halve the transect along the core, and identify the dogleg side
# DV14 = left
ratio <- laser[14,4] # this is the core:total distance ratio
ratio <- max(DV_14.roll$distance)*ratio

# explore DV.roll file to approximate cutoff
ratio
DV14_dogleg <- DV_14.roll[1:1955,]

## for left: it's reverse, so...
#	- subtract the max from the halved vector, multiply by -1
#	- sort() distance from highest to lowest
#	- pull out ratios from matrix row
#		annuulratios[#,]	
#	- plot the dogleg

#	- subtract the max from the halved vector, multiply by -1

DV14_dogleg$distance <- (DV14_dogleg$distance - max(DV14_dogleg$distance))*-1
head(DV14_dogleg)

#	- order() distance from highest to lowest
DV14_dogleg <- DV14_dogleg[order(DV14_dogleg$distance),]
head(DV14_dogleg)
 
#	- pull out ratios from matrix row, multiply by max(transect)
dogleg[13,] # copy values
DV14_doglegprop <- c(0, 0.245651, 0.344495, 0.49938, 0.625652, 0.789382,     1)

DV14_doglegprop <- DV14_doglegprop*max(DV14_dogleg$distance)
DV14_doglegprop

#	- plot the dogleg
plot (DV14_dogleg$X86Sr ~ DV14_dogleg$distance, type = "l", ylab = "Isotopic Ratio", xlab = "Distance (um)", main= "DV_14 Sr+Ba", lwd=3, cex.axis=1.5, cex.main=1.5, cex.lab=1.5, ylim=c(0,4))
par(new=T)
with(DV14_dogleg, plot(DV14_dogleg$X138Ba ~ DV14_dogleg$distance, type= "l", lty=2, lwd=2,col="turquoise", ylim= c(0,0.2), axes=F, xlab=NA, ylab=NA))
axis(side=4, cex.axis=1.5)
mtext(side=4, line=3, cex=1.5,"Ba:Ca Ratio (ummol/mol)", col="turquoise")
abline(v=c(DV14_doglegprop))



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