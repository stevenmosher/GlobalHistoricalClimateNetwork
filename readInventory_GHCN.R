
readInventory_GHCN <-function(fname){

  require(dplyr)
  require(stringr)
#  Variable          Columns      Type
#  --------          -------      ----
#    
#    ID                 1-11        Integer
#  LATITUDE          13-20        Real
#  LONGITUDE         22-30        Real
#  STNELEV           32-37        Real
#  NAME              39-68        Character
  
  cnames <- c("ID", "Latitude","Longitude","Elevation","Name")
  cw <-c(11,9,10,7,31)
  colClasses <-c("character", "numeric","numeric","numeric","character")
  X <- tbl_df(read.fwf(fname,col.names = cnames,widths = cw, stringsAsFactors=F,comment.char=""))
  X<-X%>%mutate(Name=str_trim(Name))%>%mutate(ID=str_trim(ID))
  X<-X %>% mutate(Elevation=ifelse(Elevation==9999, NA, Elevation))
  return(X)
}
  
  
  
  
  