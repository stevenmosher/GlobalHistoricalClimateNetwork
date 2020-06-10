source("Libraries.R")

unadj <-"ftp://ftp.ncdc.noaa.gov/pub/data/ghcn/v4/ghcnm.tavg.latest.qcu.tar.gz"
adj   <-"ftp://ftp.ncdc.noaa.gov/pub/data/ghcn/v4/ghcnm.tavg.latest.qcf.tar.gz"
cc    <-"ftp://ftp.ncdc.noaa.gov/pub/data/ghcn/v4/ghcnm-countries.txt"
Tdir  <- "TemporaryData"
Cdir  <- "CurrentData"
bunadj<-file.path(Tdir,basename(unadj))
badj<-file.path(Tdir,basename( adj))

#download to temp
#unzip
#Clean Current
#Move to Current
# delete temp
# call Processing
if(!dir.exists(Tdir))dir.create(Tdir)
if(!dir.exists(Cdir))dir.create(Cdir)

filesInTemp <-list.files(Tdir)

 
  download.file(unadj,destfile=bunadj,mode="wb")
  gunzip(bunadj,destname=basename(bunadj))
  untar(basename(bunadj),exdir=Cdir)
  download.file(adj,destfile=badj,mode="wb")
  gunzip(badj,destname=basename(badj))
  untar(basename(badj),exdir=Cdir)
  
   

