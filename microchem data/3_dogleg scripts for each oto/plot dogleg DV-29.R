## sequence for applying annuli ratios

## read in calculated transect ratios
# dogleg <- read.csv("annuli_ratios.csv", header=T)
# val.dogleg <- dogleg[,3:11]
# val.dogleg <- as.matrix(val.dogleg)

## review transect dogleg that is being used for transect
dogleg[23,]

## halve the transect along the core, and identify the dogleg side
# DV29 = left
ratio <- laser[29,4] # this is the core:total distance ratio
ratio <- max(DV_29.roll$distance)*ratio

# explore DV.roll file to approximate cutoff
ratio
View(DV_29.roll)
DV29_dogleg <- DV_29.roll[1:2274,]

## for left: it's reverse, so...
#	- subtract the max from the halved vector, multiply by -1
#	- sort() distance from highest to lowest
#	- pull out ratios from matrix row
#		annuulratios[#,]	
#	- plot the dogleg

#	- subtract the max from the halved vector, multiply by -1

DV29_dogleg$distance <- (DV29_dogleg$distance - max(DV29_dogleg$distance))*-1
head(DV29_dogleg)

#	- order() distance from highest to lowest
DV29_dogleg <- DV29_dogleg[order(DV29_dogleg$distance),]
head(DV29_dogleg)
 
#	- pull out ratios from matrix row, multiply by max(transect)
dogleg[23,] # copy values
DV29_doglegprop <- c(0, 0.287956, 0.419167, 0.783864, 0.928843,1)

DV29_doglegprop <- DV29_doglegprop*max(DV29_dogleg$distance)
DV29_doglegprop

#	- plot the dogleg
plot (DV29_dogleg$X86Sr ~ DV29_dogleg$distance, type = "l", ylab = "Isotopic Ratio", xlab = "Distance (um)", main= "DV_29 Sr+Ba", lwd=3, cex.axis=1.5, cex.main=1.5, cex.lab=1.5, ylim=c(0,4))
par(new=T)
with(DV29_dogleg, plot(DV29_dogleg$X138Ba ~ DV29_dogleg$distance, type= "l", lty=2, lwd=2,col="turquoise", ylim= c(0,0.2), axes=F, xlab=NA, ylab=NA))
axis(side=4, cex.axis=1.5)
mtext(side=4, line=3, cex=1.5,"Ba:Ca Ratio (ummol/mol)", col="turquoise")
abline(v=c(DV29_doglegprop))



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