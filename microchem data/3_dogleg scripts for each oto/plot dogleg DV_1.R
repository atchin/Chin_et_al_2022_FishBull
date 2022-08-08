## sequence for applying annuli ratios

## read in calculated transect ratios
dogleg <- read.csv("annuli_ratios.csv", header=T)
val.dogleg <- dogleg[,3:11]
val.dogleg <- as.matrix(val.dogleg)

## review transect dogleg that is being used for transect
val.dogleg[1,]

## halve the transect along the core, and identify the dogleg side
# DV1 = left
ratio <- laser[1,4] # this is the core:total distance ratio
ratio <- max(DV_01.roll$distance)*ratio

# explore DV.roll file to approximate cutoff
# [1] 192.9016 = [1542]
DV1_dogleg <- DV_01.roll[1:1542,]

## for left: it's reverse, so...
#	- subtract the max from the halved vector, multiply by -1
#	- sort() distance from highest to lowest
#	- pull out ratios from matrix row
#		annuulratios[#,]	
#	- plot the dogleg

#	- subtract the max from the halved vector, multiply by -1

DV1_dogleg$distance <- (DV1_dogleg$distance - max(DV1_dogleg$distance))*-1
DV1_dogleg

#	- order() distance from highest to lowest
DV1_dogleg <- DV1_dogleg[order(DV1_dogleg$distance),]
head(DV1_dogleg)
 
#	- pull out ratios from matrix row, multiply by max(transect)
DV1_doglegprop <- val.dogleg[1,1:8]
DV1_doglegprop # copy values
DV1_doglegprop <- c(0,0.303571429,0.5446429,0.6964286,0.8035714,0.8750000,0.9196429,1.0000000) 

DV1_doglegprop <- DV1_doglegprop*max(DV1_dogleg$distance)


#	- plot the dogleg
plot (DV1_dogleg$X86Sr ~ DV1_dogleg$distance, type = "l", ylab = "Isotopic Ratio", xlab = "Distance (um)", main= "DV_01 Sr+Ba", lwd=3, cex.axis=1.5, cex.main=1.5, cex.lab=1.5, ylim=c(0,4))
par(new=T)
with(DV1_dogleg, plot(DV1_dogleg$X138Ba ~ DV1_dogleg$distance, type= "l", lty=2, lwd=2,col="turquoise", ylim= c(0,0.2), axes=F, xlab=NA, ylab=NA))
axis(side=4, cex.axis=1.5)
mtext(side=4, line=3, cex=1.5,"Ba:Ca Ratio (ummol/mol)", col="turquoise")
abline(v=c(DV1_doglegprop))

plot(DV1_dogleg$X86Sr ~ DV1_dogleg$distance, type = "l", ylab = "Isotopic Ratio", xlab = "Distance (um)", main= "DV_01 Sr+Zn", lwd=3, cex.axis=1.5, cex.main=1.5, cex.lab=1.5, ylim=c(0,4))
par(new=T)
with(DV1_dogleg, plot(DV1_dogleg$X66Zn ~ DV1_dogleg$distance, type= "l", lty=2, lwd=2,col="red", ylim= c(0,0.2), axes=F, xlab=NA, ylab=NA))
axis(side=4, cex.axis=1.5)
mtext(side=4, line=3, cex=1.5,"Zn:Ca Ratio (ummol/mol)", col="red")
abline(v=c(DV1_doglegprop))



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