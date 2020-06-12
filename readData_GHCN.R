
readData_GHCN <-function(fname){
  
  require(dplyr)
  require(stringr)
  
  #ID                 1-11        Integer
  #YEAR              12-15        Integer
  #ELEMENT           16-19        Character
  #VALUE1            20-24        Integer
  #DMFLAG1           25-25        Character
  #QCFLAG1           26-26        Character
  #DSFLAG1           27-27        Character
  
   
  
  cw <-c(11,4,4,5,1,1,1,5,1,1,1,5,1,1,1,5,1,1,1,5,1,1,1,5,1,1,1,5,1,1,1,5,1,1,1,5,1,1,1,5,1,1,1
         ,5,1,1,1,5,1,1,1)
   
  
  X <- tbl_df(read.fwf(fname,widths = cw, stringsAsFactors=F,na.strings= "-9999",comment.char=""))
  
  
  Jan <- X %>% dplyr::select(V1,V2,V4,V5,V6,V7) %>% rename(ID=V1,Year=V2,Temp=V4,
                                                           DMflag=V5,QCflag=V6,DSFlag=V7)
  Jan <- Jan %>% mutate(Month=1)
  
  Feb <- X %>% dplyr::select(V1,V2,V8,V9,V10,V11) %>% rename(ID=V1,Year=V2,Temp=V8,
                                                           DMflag=V9,QCflag=V10,DSFlag=V11)
  Feb <- Feb %>% mutate(Month=2)
  
  Mar <- X %>% dplyr::select(V1,V2,V12,V13,V14,V15) %>% rename(ID=V1,Year=V2,Temp=V12,
                                                            DMflag=V13,QCflag=V14,DSFlag=V15)
  Mar <- Mar %>% mutate(Month=3)
  
 Apr <- X %>% dplyr::select(V1,V2,V16,V17,V18,V19) %>% rename(ID=V1,Year=V2,Temp=V16,
                                                               DMflag=V17,QCflag=V18,DSFlag=V19)
 Apr <- Apr %>% mutate(Month=4)
 
 May <- X %>% dplyr::select(V1,V2,V20,V21,V22,V23) %>% rename(ID=V1,Year=V2,Temp=V20,
                                                              DMflag=V21,QCflag=V22,DSFlag=V23)
 May <- May %>% mutate(Month=5)
 
 Jun <- X %>% dplyr::select(V1,V2,V24,V25,V26,V27) %>% rename(ID=V1,Year=V2,Temp=V24,
                                                              DMflag=V25,QCflag=V26,DSFlag=V27)
 Jun <- Jun %>% mutate(Month=6)
 
 
 Jul <- X %>% dplyr::select(V1,V2,V28,V29,V30,V31) %>% rename(ID=V1,Year=V2,Temp=V28,
                                                              DMflag=V29,QCflag=V30,DSFlag=V31)
 Jul <- Jul %>% mutate(Month=7)
 
 
 Aug <- X %>% dplyr::select(V1,V2,V32,V33,V34,V35) %>% rename(ID=V1,Year=V2,Temp=V32,
                                                              DMflag=V33,QCflag=V34,DSFlag=V35)
 Aug <- Aug %>% mutate(Month=8)
 
 Sep <- X %>% dplyr::select(V1,V2,V36,V37,V38,V39) %>% rename(ID=V1,Year=V2,Temp=V36,
                                                              DMflag=V37,QCflag=V38,DSFlag=V39)
 Sep <- Sep %>% mutate(Month=9)
 
 Oct <- X %>% dplyr::select(V1,V2,V40,V41,V42,V43) %>% rename(ID=V1,Year=V2,Temp=V40,
                                                              DMflag=V41,QCflag=V42,DSFlag=V43)
 Oct <- Oct %>% mutate(Month=10)
 
 Nov <- X %>% dplyr::select(V1,V2,V44,V45,V46,V47) %>% rename(ID=V1,Year=V2,Temp=V44,
                                                              DMflag=V45,QCflag=V46,DSFlag=V47)
 Nov <- Nov %>% mutate(Month=11)
 
 Dec <- X %>% dplyr::select(V1,V2,V48,V49,V50,V51) %>% rename(ID=V1,Year=V2,Temp=V48,
                                                              DMflag=V49,QCflag=V50,DSFlag=V51)
 Dec <- Dec %>% mutate(Month=12)
 
 Jan$QCflag=as.character(Jan$QCflag)
 Feb$QCflag=as.character(Feb$QCflag)
 Mar$QCflag=as.character(Mar$QCflag)
 Apr$QCflag=as.character(Apr$QCflag)
 May$QCflag=as.character(May$QCflag)
 Jun$QCflag=as.character(Jun$QCflag)
 Jul$QCflag=as.character(Jul$QCflag)
 Aug$QCflag=as.character(Aug$QCflag)
 Sep$QCflag=as.character(Sep$QCflag)
 Oct$QCflag=as.character(Oct$QCflag)
 Nov$QCflag=as.character(Nov$QCflag)
 Dec$QCflag=as.character(Dec$QCflag)
 
 Jan$DSFlag=as.character(Jan$DSFlag)
 Feb$DSFlag=as.character(Feb$DSFlag)
 Mar$DSFlag=as.character(Mar$DSFlag)
 Apr$DSFlag=as.character(Apr$DSFlag)
 May$DSFlag=as.character(May$DSFlag)
 Jun$DSFlag=as.character(Jun$DSFlag)
 Jul$DSFlag=as.character(Jul$DSFlag)
 Aug$DSFlag=as.character(Aug$DSFlag)
 Sep$DSFlag=as.character(Sep$DSFlag)
 Oct$DSFlag=as.character(Oct$DSFlag)
 Nov$DSFlag=as.character(Nov$DSFlag)
 Dec$DSFlag=as.character(Dec$DSFlag)
 
 Jan$DMflag=as.character(Jan$DMflag)
 Feb$DMflag=as.character(Feb$DMflag)
 Mar$DMflag=as.character(Mar$DMflag)
 Apr$DMflag=as.character(Apr$DMflag)
 May$DMflag=as.character(May$DMflag)
 Jun$DMflag=as.character(Jun$DMflag)
 Jul$DMflag=as.character(Jul$DMflag)
 Aug$DMflag=as.character(Aug$DMflag)
 Sep$DMflag=as.character(Sep$DMflag)
 Oct$DMflag=as.character(Oct$DMflag)
 Nov$DMflag=as.character(Nov$DMflag)
 Dec$DMflag=as.character(Dec$DMflag)
 
 
 
 
 A <- bind_rows(Jan, Feb,Mar, Apr,May,Jun,Jul, Aug, Sep,Oct,Nov,Dec)
 
 A$Temp[A$Temp==-9999]<- NA
 
 A<- A %>% mutate(Temp=Temp/100)  
 
 A<- A %>% mutate(DMflag =as.character(DMflag))%>% mutate(QCflag =as.character(QCflag))%>%
           mutate(DSFlag =as.character(DSFlag)) %>% mutate(ID =str_trim(ID))
 
 return(A)
 
}
 
 
 
 
 
 
 
 
 
 
 
 
 
  
  
  
  
  
  
  
  
  
  
  
  
  
  