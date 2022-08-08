## sequence for applying annuli ratios

## read in calculated transect ratios
# dogleg <- read.csv("annuli_ratios.csv", header=T)
# val.dogleg <- dogleg[,3:11]
# val.dogleg <- as.matrix(val.dogleg)

## review transect dogleg that is being used for transect
dogleg
dogleg[22,]

## halve the transect along the core, and identify the dogleg side
# DV28 = right
ratio <- laser[28,4] # this is the core:total distance ratio
ratio <- max(DV_28.roll$distance)*ratio

# explore DV.roll file to approximate cutoff
ratio
View(DV_28.roll)
DV28_dogleg <- DV_28.roll[1858:3676,]

## for right:
#	-substract first value from halved vector
DV28_dogleg$distance <- DV28_dogleg$distance - DV28_dogleg$distance[1]
head(DV28_dogleg)
 
#	- pull out ratios from matrix row, multiply by max(transect)
dogleg[22,] # copy values
DV28_doglegprop <- c(0,0.201307, 0.363344, 0.429338, 0.583072, 0.764542, 0.842923,1)

DV28_doglegprop <- DV28_doglegprop*max(DV28_dogleg$distance)
DV28_doglegprop

#	- plot the dogleg
plot (DV28_dogleg$X86Sr ~ DV28_dogleg$distance, type = "l", ylab = "Isotopic Ratio", xlab = "Distance (um)", main= "DV_28 Sr+Ba", lwd=3, cex.axis=1.5, cex.main=1.5, cex.lab=1.5, ylim=c(0,4))
par(new=T)
with(DV28_dogleg, plot(DV28_dogleg$X138Ba ~ DV28_dogleg$distance, type= "l", lty=2, lwd=2,col="turquoise", ylim= c(0,0.2), axes=F, xlab=NA, ylab=NA))
axis(side=4, cex.axis=1.5)
mtext(side=4, line=3, cex=1.5,"Ba:Ca Ratio (ummol/mol)", col="turquoise")
abline(v=c(DV28_doglegprop))



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