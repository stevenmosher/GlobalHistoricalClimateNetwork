getDir_GHCN<- function(directory=getwd()){
  require(stringr)
  
  prefix <-"ghcnm.v4."
  dirs<- list.dirs(path=directory,full.names=TRUE)
  ghcndir<-str_detect(dirs,pattern=prefix)
  if(sum(ghcndir)==0){
    msg<- paste("No GHCN Folders in ",directory,sep="")
    stop(msg)
    
  }else{
    dirs<-dirs[ghcndir]
  }
  dirs<-tbl_df(data.frame(Directory=dirs,stringsAsFactors = F))
  dirs<-dirs %>% mutate(Date=dirdate_GHCN(Directory))
  
  return(dirs)
}