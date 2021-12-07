# R code for ecosystem monitoring by remote sensing
# First of all, we need to install additional packages
# raster package to manage image data
# https://cran.r-project.org/web/packages/raster/index.html

# install.packages("raster")

library(raster)

# Set the working directory
# setwd("~/lab/") # Linux 
setwd("C:/lab/")  # windows
# setwd("/Users/name/lab/") # mac

# We are going to import satellite data
# objects cannot be numbers
l2011 <- brick("p224r63_2011.grd")

l2011

# plot(l2011)

# B1 is the reflectance in the blue band
# B2 is the reflectance in the green band
# B3 is the reflectance in the red band

cl <- colorRampPalette(c("black","grey","light grey"))(100)
plot(l2011, col=cl)

plotRGB(l2011, r=3, g=2, b=1, stretch="Lin")

#----------------- day 2

# B1 is the reflectance in the blue band
# B2 is the reflectance in the green band
# B3 is the reflectance in the red band
# B4 is the reflectance in the NIR band

# let's plot the green band
plot(l2011$B2_sre)

cl <- colorRampPalette(c("black","grey","light grey"))(100)
plot(l2011$B2_sre, col=cl)

# change the colorRampPalette with dark green, green, and light green, e.g. clg 
clg <- colorRampPalette(c("dark green","green","light green"))(100)
plot(l2011$B2_sre, col=clg)

# do the same for the blue band using "dark blue", "blue", and "light blue"
# B1
clb <- colorRampPalette(c("dark blue","blue","light blue"))(100)
plot(l2011$B1_sre, col=clb)

# plot both images in just one multiframe graph
par(mfrow=c(1,2)) # the first number is the number of rows in the multiframe, while the second one is the mnumber of columns
plot(l2011$B1_sre, col=clb)
plot(l2011$B2_sre, col=clg)

# plot both images in just one multiframe graph with two rows and just one column
par(mfrow=c(2,1))
plot(l2011$B1_sre, col=clb)
plot(l2011$B2_sre, col=clg)


#--- day 3

plot(l2011$B1_sre)

# plot the blue band using a blue colorRampPalette
clb <- colorRampPalette(c("dark blue","blue","light blue"))(100)
plot(l2011$B1_sre, col=clb)

# multiframe
par(mfrow=c(1,2)) # the first number is the number of rows in the multiframe, while the second one is the mnumber of columns

# plot the blue and the green besides, with different colorRampPalette
clb <- colorRampPalette(c("dark blue","blue","light blue"))(100)
plot(l2011$B1_sre, col=clb)

clg <- colorRampPalette(c("dark green","green","light green"))(100)
plot(l2011$B2_sre, col=clg)

# Exercirse: put the plots one on top of the other
# invert the number of rows and the number of columns
  
par(mfrow=c(2,1)) # the first number is the number of rows in the multiframe, while the second one is the mnumber of columns

# plot the blue and the green besides, with different colorRampPalette
clb <- colorRampPalette(c("dark blue","blue","light blue"))(100)
plot(l2011$B1_sre, col=clb)

clg <- colorRampPalette(c("dark green","green","light green"))(100)
plot(l2011$B2_sre, col=clg)

# Exercise: plot the first four bands with two rows and two columns
par(mfrow=c(2,2)) # the first number is the number of rows in the multiframe, while the second one is the mnumber of columns

clb <- colorRampPalette(c("dark blue","blue","light blue"))(100)
plot(l2011$B1_sre, col=clb)

clg <- colorRampPalette(c("dark green","green","light green"))(100)
plot(l2011$B2_sre, col=clg)

clr <- colorRampPalette(c("dark red","red","pink"))(100)
plot(l2011$B3_sre, col=clr)
  
clnir <- colorRampPalette(c("red","orange","yellow"))(100)
plot(l2011$B4_sre, col= clnir)
  
# dev.off()
 
plotRGB(l2011, r=3, g=2, b=1, stretch="Lin")  # natural colours
plotRGB(l2011, r=4, g=3, b=2, stretch="Lin")  # false colours
plotRGB(l2011, r=3, g=4, b=2, stretch="Lin")  # false colours
plotRGB(l2011, r=3, g=2, b=4, stretch="Lin")  # false colours

par(mfrow=c(2,2))
plotRGB(l2011, r=3, g=2, b=1, stretch="Lin")  # natural colours
plotRGB(l2011, r=4, g=3, b=2, stretch="Lin")  # false colours
plotRGB(l2011, r=3, g=4, b=2, stretch="Lin")  # false colours
plotRGB(l2011, r=3, g=2, b=4, stretch="Lin")  # false colours
  
# final day on this tropical forest reserve

plotRGB(l2011, r=4, g=3, b=2, stretch="Lin")  
plotRGB(l2011, r=4, g=3, b=2, stretch="Hist") 
  
# Importing past data
setwd("~/lab/") # in case you are on a new R session
l1988 <- brick("p224r63_1988.grd")  
l1988
  
par(mfrow=c(2,1))
plotRGB(l1988, r=4, g=3, b=2, stretch="Lin")  
plotRGB(l2011, r=4, g=3, b=2, stretch="Lin")  

# Put the NIR in the blue channel
plotRGB(l1988, r=2, g=3, b=4, stretch="Lin")  
plotRGB(l2011, r=2, g=3, b=4, stretch="Lin")
