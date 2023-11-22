library(tidyverse)

df=read.table("europa.dat")
Country=rownames(df)
rownames(df)=NULL
Country %>% length
df<-df %>% mutate(Country) 
colnames(df)=c("Agriculture", "Mines", "Factories","Energy","Construction","Service_industries","Finance","Social_services","Trans_comm","Country")

df <- df %>% relocate("Country",1)



