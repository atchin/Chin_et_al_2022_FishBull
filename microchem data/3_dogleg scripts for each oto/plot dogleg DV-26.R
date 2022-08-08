## sequence for applying annuli ratios

## read in calculated transect ratios
# dogleg <- read.csv("annuli_ratios.csv", header=T)
# val.dogleg <- dogleg[,3:11]
# val.dogleg <- as.matrix(val.dogleg)

## review transect dogleg that is being used for transect
dogleg[1:27,]

## halve the transect along the core, and identify the dogleg side
# DV26 = left
ratio <- laser[26,4] # this is the core:total distance ratio
ratio <- max(DV_26.roll$distance)*ratio

# explore DV.roll file to approximate cutoff
ratio
View(DV_26.roll)
DV26_dogleg <- DV_26.roll[1:1127,]

## for left: it's reverse, so...
#	- subtract the max from the halved vector, multiply by -1
#	- sort() distance from highest to lowest
#	- pull out ratios from matrix row
#		annuulratios[#,]	
#	- plot the dogleg

#	- subtract the max from the halved vector, multiply by -1

DV26_dogleg$distance <- (DV26_dogleg$distance - max(DV26_dogleg$distance))*-1
head(DV26_dogleg)

#	- order() distance from highest to lowest
DV26_dogleg <- DV26_dogleg[order(DV26_dogleg$distance),]
head(DV26_dogleg)
 
#	- pull out ratios from matrix row, multiply by max(transect)
dogleg[21,] # copy values
DV26_doglegprop <- c(0, 0.242481, 0.410572, 0.476564, 0.579528, 0.682956, 0.796063, 0.936305,1)

DV26_doglegprop <- DV26_doglegprop*max(DV26_dogleg$distance)
DV26_doglegprop

#	- plot the dogleg
plot (DV26_dogleg$X86Sr ~ DV26_dogleg$distance, type = "l", ylab = "Isotopic Ratio", xlab = "Distance (um)", main= "DV_26 Sr+Ba", lwd=3, cex.axis=1.5, cex.main=1.5, cex.lab=1.5, ylim=c(0,4))
par(new=T)
with(DV26_dogleg, plot(DV26_dogleg$X138Ba ~ DV26_dogleg$distance, type= "l", lty=2, lwd=2,col="turquoise", ylim= c(0,0.2), axes=F, xlab=NA, ylab=NA))
axis(side=4, cex.axis=1.5)
mtext(side=4, line=3, cex=1.5,"Ba:Ca Ratio (ummol/mol)", col="turquoise")
abline(v=c(DV26_doglegprop))



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