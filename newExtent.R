newExtent <- function(lat,lon,radius=1000){
  require(raster)
  earth <- 6378.137 
  dtr <- pi/180
  meters_deg <-(1 / ((2 * pi / 360) * earth)) / 1000
  lat_bump <-radius*meters_deg
  lon_bump<-(radius * meters_deg) / cos(lat * dtr)
  lonhi <- lon+lon_bump
  lonlow <- lon-lon_bump
  lathi <- lat+lat_bump
  latlow <- lat-lat_bump
  ##  cases to hndle
  ##  first handle the poles
  if(lathi >90){
    ## we have to wrap all the way around the npole
    lonlow=-180
    lonhi= 180
    lathi= 90
    return(extent(lonlow,lonhi,latlow,lathi))
  }
  if(latlow <-90){
    ## we have to wrap all the way around the npole
    lonlow=-180
    lonhi= 180
    latlow= -90
    return(extent(lonlow,lonhi,latlow,lathi))
  }
   
  if(lonlow< -180){
    lonlow=-180
    lonhi= 180
    
    return(extent(lonlow,lonhi,latlow,lathi))
    
  } 
  if(lonhi< -180){
    lonlow=-180
    lonhi= 180
    
    return(extent(lonlow,lonhi,latlow,lathi))
    
  }
  
  
}