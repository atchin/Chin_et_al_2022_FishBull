## sequence for applying annuli ratios

## read in calculated transect ratios
# dogleg <- read.csv("annuli_ratios.csv", header=T)
# val.dogleg <- dogleg[,3:11]
# val.dogleg <- as.matrix(val.dogleg)

## review transect dogleg that is being used for transect
dogleg[3,]

## halve the transect along the core, and identify the dogleg side
# DV03 = left
ratio <- laser[3,4] # this is the core:total distance ratio
ratio <- max(DV_3_redo.roll$distance)*ratio

# explore DV.roll file to approximate cutoff
DV03_dogleg <- DV_3_redo.roll[1:1498,]

## for left: it's reverse, so...
#	- subtract the max from the halved vector, multiply by -1
#	- sort() distance from highest to lowest
#	- pull out ratios from matrix row
#		annuulratios[#,]	
#	- plot the dogleg

#	- subtract the max from the halved vector, multiply by -1

DV03_dogleg$distance <- (DV03_dogleg$distance - max(DV03_dogleg$distance))*-1
DV03_dogleg

#	- order() distance from highest to lowest
DV03_dogleg <- DV03_dogleg[order(DV03_dogleg$distance),]
head(DV03_dogleg)
 
#	- pull out ratios from matrix row, multiply by max(transect)
dogleg[3,] # copy values
DV03_doglegprop <- c(0, 0.465954244,  0.6008745,   0.6942590,   0.6942590,   0.7488178,   0.8810533,   1.0000000)

DV03_doglegprop <- DV03_doglegprop*max(DV03_dogleg$distance)
DV03_doglegprop

#	- plot the dogleg
plot (DV03_dogleg$X86Sr ~ DV03_dogleg$distance, type = "l", ylab = "Isotopic Ratio", xlab = "Distance (um)", main= "DV_03 Sr+Ba", lwd=3, cex.axis=1.5, cex.main=1.5, cex.lab=1.5, ylim=c(0,4))
par(new=T)
with(DV03_dogleg, plot(DV03_dogleg$X138Ba ~ DV03_dogleg$distance, type= "l", lty=2, lwd=2,col="turquoise", ylim= c(0,0.2), axes=F, xlab=NA, ylab=NA))
axis(side=4, cex.axis=1.5)
mtext(side=4, line=3, cex=1.5,"Ba:Ca Ratio (ummol/mol)", col="turquoise")
abline(v=c(DV03_doglegprop))



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