## sequence for applying annuli ratios

## read in calculated transect ratios
# dogleg <- read.csv("annuli_ratios.csv", header=T)
# val.dogleg <- dogleg[,3:11]
# val.dogleg <- as.matrix(val.dogleg)

## review transect dogleg that is being used for transect
dogleg
dogleg[20,]

## halve the transect along the core, and identify the dogleg side
# DV25 = right
ratio <- laser[25,4] # this is the core:total distance ratio
ratio <- max(DV_25.roll$distance)*ratio

# explore DV.roll file to approximate cutoff
ratio
DV25_dogleg <- DV_25.roll[1349:2397,]

## for right:
#	-substract first value from halved vector
DV25_dogleg$distance <- DV25_dogleg$distance - DV25_dogleg$distance[1]
head(DV25_dogleg)
 
#	- pull out ratios from matrix row, multiply by max(transect)
dogleg[20,] # copy values
DV25_doglegprop <- c(0, 0.349438, 0.439794, 0.631954, 0.789074,1)

DV25_doglegprop <- DV25_doglegprop*max(DV25_dogleg$distance)
DV25_doglegprop

#	- plot the dogleg
plot (DV25_dogleg$X86Sr ~ DV25_dogleg$distance, type = "l", ylab = "Isotopic Ratio", xlab = "Distance (um)", main= "DV_25 Sr+Ba", lwd=3, cex.axis=1.5, cex.main=1.5, cex.lab=1.5, ylim=c(0,4))
par(new=T)
with(DV25_dogleg, plot(DV25_dogleg$X138Ba ~ DV25_dogleg$distance, type= "l", lty=2, lwd=2,col="turquoise", ylim= c(0,0.2), axes=F, xlab=NA, ylab=NA))
axis(side=4, cex.axis=1.5)
mtext(side=4, line=3, cex=1.5,"Ba:Ca Ratio (ummol/mol)", col="turquoise")
abline(v=c(DV25_doglegprop))



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