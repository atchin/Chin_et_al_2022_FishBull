## sequence for applying annuli ratios

## read in calculated transect ratios
# dogleg <- read.csv("annuli_ratios.csv", header=T)
# val.dogleg <- dogleg[,3:11]
# val.dogleg <- as.matrix(val.dogleg)

## review transect dogleg that is being used for transect
dogleg
dogleg[7,]

## halve the transect along the core, and identify the dogleg side
# DV08 = right
ratio <- laser[8,4] # this is the core:total distance ratio
ratio <- max(DV_08.roll$distance)*ratio

# explore DV.roll file to approximate cutoff
ratio
View(DV_08.roll)
DV08_dogleg <- DV_08.roll[760:1438,]

## for right:
#	-substract first value from halved vector
DV08_dogleg$distance <- DV08_dogleg$distance - DV08_dogleg$distance[1]
head(DV08_dogleg)
 
#	- pull out ratios from matrix row, multiply by max(transect)
dogleg[7,] # copy values
DV08_doglegprop <- c(0,0.361,0.434775,0.591525,0.720165,0.825011,0.929322,1)

DV08_doglegprop <- DV08_doglegprop*max(DV08_dogleg$distance)
DV08_doglegprop

#	- plot the dogleg
plot (DV08_dogleg$X86Sr ~ DV08_dogleg$distance, type = "l", ylab = "Isotopic Ratio", xlab = "Distance (um)", main= "DV_08 Sr+Ba", lwd=3, cex.axis=1.5, cex.main=1.5, cex.lab=1.5, ylim=c(0,4))
abline(h=3, col="black")
abline(h=0, col="turquoise")
par(new=T)
with(DV08_dogleg, plot(DV08_dogleg$X138Ba ~ DV08_dogleg$distance, type= "l", lty=2, lwd=2,col="turquoise", ylim= c(0,0.2), axes=F, xlab=NA, ylab=NA))
axis(side=4, cex.axis=1.5)
mtext(side=4, line=3, cex=1.5,"Ba:Ca Ratio (ummol/mol)", col="turquoise")
abline(v=c(DV08_doglegprop), lty=2, col="grey")




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