## sequence for applying annuli ratios

## read in calculated transect ratios
# dogleg <- read.csv("annuli_ratios.csv", header=T)
# val.dogleg <- dogleg[,3:11]
# val.dogleg <- as.matrix(val.dogleg)

## review transect dogleg that is being used for transect
dogleg
dogleg[10,]

## halve the transect along the core, and identify the dogleg side
# DV11 = right
ratio <- laser[11,4] # this is the core:total distance ratio
ratio <- max(DV_11.roll$distance)*ratio

# explore DV.roll file to approximate cutoff
ratio
DV_11.roll$distance
DV11_dogleg <- DV_11.roll[1224:2491,]
DV11_dogleg

## for right:
#	-substract first value from halved vector
DV11_dogleg$distance <- DV11_dogleg$distance - DV11_dogleg$distance[1]
DV11_dogleg
 
#	- pull out ratios from matrix row, multiply by max(transect)
dogleg[10,] # copy values
DV11_doglegprop <- c(0, 0.271964, 0.309163, 0.45733, 0.590471, 0.724067, 1)
DV11_doglegprop <- DV11_doglegprop*max(DV11_dogleg$distance)
DV11_doglegprop

#	- plot the dogleg
plot (DV11_dogleg$X86Sr ~ DV11_dogleg$distance, type = "l", ylab = "Isotopic Ratio", xlab = "Distance (um)", main= "DV_11 Sr+Ba", lwd=3, cex.axis=1.5, cex.main=1.5, cex.lab=1.5, ylim=c(0,4))
par(new=T)
with(DV11_dogleg, plot(DV11_dogleg$X138Ba ~ DV11_dogleg$distance, type= "l", lty=2, lwd=2,col="turquoise", ylim= c(0,0.2), axes=F, xlab=NA, ylab=NA))
axis(side=4, cex.axis=1.5)
mtext(side=4, line=3, cex=1.5,"Ba:Ca Ratio (ummol/mol)", col="turquoise")
abline(v=DV11_doglegprop)



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