filedate_GHCN<- function(directory=NA){
  require(stringr)
  filedate <- str_sub(directory,nchar(directory)-7,nchar(directory))
  return(as.Date(filedate,format="%Y%m%d"))
   
}