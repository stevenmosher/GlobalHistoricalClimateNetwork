getDat_GHCN<- function(directory=getwd(),Adjusted=TRUE){
  require(stringr)
  
   
  ext <- ".dat$"
  adj <- "qcf"
  raw <- "qcu"
  D<- list.files(path=directory,full.names=TRUE,recursive=TRUE, pattern=ext)
  if(Adjusted){
    D<-D[str_detect(D,pattern=adj)]
    
  }else{
    D<-D[str_detect(D,pattern=raw)]
  }
  
   
  if(length(D)==0){
    msg<- paste("No GHCN Data in ",directory,sep="")
    stop(msg)
    
  } 
  D<-tbl_df(data.frame(Filename=D,stringsAsFactors = F))
  D<-D %>% mutate(Date=filedate_GHCN(Filename)) %>% arrange(desc(Date))
  
  return(D)
}