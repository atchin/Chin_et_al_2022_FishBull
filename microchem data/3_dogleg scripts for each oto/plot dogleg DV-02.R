## sequence for applying annuli ratios

## read in calculated transect ratios
# dogleg <- read.csv("annuli_ratios.csv", header=T)
# val.dogleg <- dogleg[,3:11]
# val.dogleg <- as.matrix(val.dogleg)

## review transect dogleg that is being used for transect
dogleg[2,]
val.dogleg[2,]

## halve the transect along the core, and identify the dogleg side
# DV02 = left
ratio <- laser[2,4] # this is the core:total distance ratio
ratio <- max(DV_2_redo.roll$distance)*ratio

# explore DV.roll file to approximate cutoff
DV02_dogleg <- DV_2_redo.roll[1:1249,]

## for left: it's reverse, so...
#	- subtract the max from the halved vector, multiply by -1
#	- sort() distance from highest to lowest
#	- pull out ratios from matrix row
#		annuulratios[#,]	
#	- plot the dogleg

#	- subtract the max from the halved vector, multiply by -1

DV02_dogleg$distance <- (DV02_dogleg$distance - max(DV02_dogleg$distance))*-1
DV02_dogleg

#	- order() distance from highest to lowest
DV02_dogleg <- DV02_dogleg[order(DV02_dogleg$distance),]
head(DV02_dogleg)
 
#	- pull out ratios from matrix row, multiply by max(transect)
DV02_doglegprop <- val.dogleg[2,]
DV02_doglegprop # copy values
DV02_doglegprop <- c(0,0.24449195,0.2928645,0.3978318,0.4933368,0.5932320,0.7177051,0.8318497,1.000000)

DV02_doglegprop <- DV02_doglegprop*max(DV02_dogleg$distance)
DV02_doglegprop

#	- plot the dogleg
plot (DV02_dogleg$X86Sr ~ DV02_dogleg$distance, type = "l", ylab = "Isotopic Ratio", xlab = "Distance (um)", main= "DV_02 Sr+Ba", lwd=3, cex.axis=1.5, cex.main=1.5, cex.lab=1.5, ylim=c(0,4))
par(new=T)
with(DV02_dogleg, plot(DV02_dogleg$X138Ba ~ DV02_dogleg$distance, type= "l", lty=2, lwd=2,col="turquoise", ylim= c(0,0.2), axes=F, xlab=NA, ylab=NA))
axis(side=4, cex.axis=1.5)
mtext(side=4, line=3, cex=1.5,"Ba:Ca Ratio (ummol/mol)", col="turquoise")
abline(v=c(DV02_doglegprop))



#	- abline(v=annuli ratios row*max(dogleg))
#		OR... calculate the abline values beforehand?

## for right:
#	-substract initial value from halved vector
#	- pull out ratios from matrix row
#		annuulratios[#,]	
#	- plot the dogleg
#	- 
#	- abline(v=annuli ratios row*max(dogleg))
#		OR... calculate the abline values beforehand?