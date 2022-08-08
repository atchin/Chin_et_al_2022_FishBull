## sequence for applying annuli ratios

## read in calculated transect ratios
# dogleg <- read.csv("annuli_ratios.csv", header=T)
# val.dogleg <- dogleg[,3:11]
# val.dogleg <- as.matrix(val.dogleg)

## review transect dogleg that is being used for transect
dogleg[16,]

## halve the transect along the core, and identify the dogleg side
# DV17 = left
ratio <- laser[17,4] # this is the core:total distance ratio
ratio <- max(DV_17.roll$distance)*ratio

# explore DV.roll file to approximate cutoff
ratio
DV17_dogleg <- DV_17.roll[1:1390,]

## for left: it's reverse, so...
#	- subtract the max from the halved vector, multiply by -1
#	- sort() distance from highest to lowest
#	- pull out ratios from matrix row
#		annuulratios[#,]	
#	- plot the dogleg

#	- subtract the max from the halved vector, multiply by -1

DV17_dogleg$distance <- (DV17_dogleg$distance - max(DV17_dogleg$distance))*-1
head(DV17_dogleg)

#	- order() distance from highest to lowest
DV17_dogleg <- DV17_dogleg[order(DV17_dogleg$distance),]
head(DV17_dogleg)
 
#	- pull out ratios from matrix row, multiply by max(transect)
dogleg[16,] # copy values
DV17_doglegprop <- c(0, 0.386811, 0.477758, 0.558812, 0.654703, 0.738257, 0.837243, 0.92822,1)

DV17_doglegprop <- DV17_doglegprop*max(DV17_dogleg$distance)
DV17_doglegprop

#	- plot the dogleg
plot (DV17_dogleg$X86Sr ~ DV17_dogleg$distance, type = "l", ylab = "Isotopic Ratio", xlab = "Distance (um)", main= "DV_17 Sr+Ba", lwd=3, cex.axis=1.5, cex.main=1.5, cex.lab=1.5, ylim=c(0,4))
par(new=T)
with(DV17_dogleg, plot(DV17_dogleg$X138Ba ~ DV17_dogleg$distance, type= "l", lty=2, lwd=2,col="turquoise", ylim= c(0,0.2), axes=F, xlab=NA, ylab=NA))
axis(side=4, cex.axis=1.5)
mtext(side=4, line=3, cex=1.5,"Ba:Ca Ratio (ummol/mol)", col="turquoise")
abline(v=c(DV17_doglegprop))



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