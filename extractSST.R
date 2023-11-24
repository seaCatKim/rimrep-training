
install.packages("ncdf4")

library(ncdf4) # package for netcdf manipulation
library(raster) # package for raster manipulation
library(rgdal) # package for geospatial analysis
library(ggplot2) # package for plotting


nc_data <- nc_open('data/sst.mon.ltm.1991-2020.nc')
# Save the print(nc) dump to a text file
{
  print(nc_data)
}

lon <- ncvar_get(nc_data, "lon")
lat <- ncvar_get(nc_data, "lat", verbose = F)
t <- ncvar_get(nc_data, "time")