## sequence for applying annuli ratios

## read in calculated transect ratios
# dogleg <- read.csv("annuli_ratios.csv", header=T)
# val.dogleg <- dogleg[,3:11]
# val.dogleg <- as.matrix(val.dogleg)

## review transect dogleg that is being used for transect
dogleg[4,]

## halve the transect along the core, and identify the dogleg side
# DV04 = left
ratio <- laser[4,4] # this is the core:total distance ratio
ratio <- max(DV_04.roll$distance)*ratio

# explore DV.roll file to approximate cutoff
DV04_dogleg <- DV_04.roll[1:1040,]

## for left: it's reverse, so...
#	- subtract the max from the halved vector, multiply by -1
#	- sort() distance from highest to lowest
#	- pull out ratios from matrix row
#		annuulratios[#,]	
#	- plot the dogleg

#	- subtract the max from the halved vector, multiply by -1

DV04_dogleg$distance <- (DV04_dogleg$distance - max(DV04_dogleg$distance))*-1
DV04_dogleg

#	- order() distance from highest to lowest
DV04_dogleg <- DV04_dogleg[order(DV04_dogleg$distance),]
head(DV04_dogleg)
 
#	- pull out ratios from matrix row, multiply by max(transect)
val.dogleg[4,] # copy values
DV04_doglegprop <- c(0,0.240843312,   0.4776857,   0.7123851,   0.7775620,   0.7770584,   0.8821319,   1.0000000)

DV04_doglegprop <- DV04_doglegprop*max(DV04_dogleg$distance)
DV04_doglegprop

#	- plot the dogleg
plot (DV04_dogleg$X86Sr ~ DV04_dogleg$distance, type = "l", ylab = "Isotopic Ratio", xlab = "Distance (um)", main= "DV_04 Sr+Ba", lwd=3, cex.axis=1.5, cex.main=1.5, cex.lab=1.5, ylim=c(0,4))
par(new=T)
with(DV04_dogleg, plot(DV04_dogleg$X138Ba ~ DV04_dogleg$distance, type= "l", lty=2, lwd=2,col="turquoise", ylim= c(0,0.2), axes=F, xlab=NA, ylab=NA))
axis(side=4, cex.axis=1.5)
mtext(side=4, line=3, cex=1.5,"Ba:Ca Ratio (ummol/mol)", col="turquoise")
abline(v=c(DV04_doglegprop))



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