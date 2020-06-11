source("Libraries.R")
source("Urls.R")
 
AdjustedFilename<-file.path(basename(GHCN_FTP_ADJ))
RawFilename<-file.path(basename(GHCN_FTP_RAW))
download.file(GHCN_FTP_ADJ,destfile=AdjustedFilename,mode="wb")
untar(AdjustedFilename)
download.file(GHCN_FTP_RAW,destfile=RawFilename,mode="wb")
untar(RawFilename)
 
 

