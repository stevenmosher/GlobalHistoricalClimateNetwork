filedate_GHCN<- function(filename=NA){
  require(stringr)
  filename<-str_sub(filename,1,nchar(filename)-8)
  filedate <- str_sub(filename,nchar(filename)-7,nchar(filename))
  return(as.Date(filedate,format="%Y%m%d"))
   
}