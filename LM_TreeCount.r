library(raster)#Load libraries
library(sp)#Load libraries
library(rgdal)#Load libraries
library(rLiDAR)#Load libraries
setwd("pathToDirHere")# Set path to directory
chm<-raster("porExCHM_stand.asc")# read raster file
schm<-CHMsmoothing(chm, "mean", 5)# gaussian filter to smooth rugosity
fws<-5# Parameter Size of the kernel. Iterate to calibrate by testing other values to see which is more apropriate.
minht<-8.0# Parameter Minimum height. Iterate to calibrate by testing other values to see which is more apropriate.
system.time({treeList<-FindTreesCHM(schm, fws, minht)})# Execute the Local Maximum algorithm. "system.time({})" is a cronomoter if you wish to measure how long the processing takes.
XY<-SpatialPoints(treeList[,1:2])# Export to shapefile to see the results in a GIS: step 1.
proj4string(XY) <- CRS("+init=epsg:32721 +datum=WGS84") # Export to shapefile to see the results in a GIS: step 2. Add datum to the XY list created in the previous step.
df <- data.frame(treeList) # Export to shapefile to see the results in a GIS: step 3. Export treeList as a dataframe to allow a SpatialPointsDataFrame transofrmation. SpatialPointsDataFrame is necessary to export as a shapefile.
coordinates(df) <- 1:2 # Export to shapefile to see the results in a GIS: step 4. Define the columns that have the coordinates.
writeOGR(obj = df, dsn="verCaminhoDaPasta", layer="nomeDoShape", driver="ESRI Shapefile")# Export to shapefile to see the results in a GIS: final step. Go to a GIS software to see if the result suit your needs.
