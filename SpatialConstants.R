## Constants
require(sp)
require(raster)

WGS <- CRS("+proj=longlat +datum=WGS84 +no_defs +ellps=WGS84 +towgs84=0,0,0")
#  EPSG:3857   Spherical Mercator
MERC <-CRS("+proj=merc +a=6378137 +b=6378137 +lat_ts=0.0 +lon_0=0.0 +x_0=0.0 +y_0=0 +k=1.0 +units=m +nadgrids=@null +wktext  +no_defs")
MOLLI <- CRS("+proj=moll +lon_0=0 +x_0=0 +y_0=0 +ellps=WGS84 +datum=WGS84 +units=m +no_defs")
#  EPSG:54009  world Molliwwode
DTR <- pi/180
GLOBE5 <-raster(nrows=36,ncols=72,xmn=-180, xmx=180, ymn=-90, ymx=90,
                crs="+proj=longlat +datum=WGS84")

