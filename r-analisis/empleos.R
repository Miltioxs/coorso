#Librerias
library(ggplot2)
library(plotly)
library(dplyr)
library(data.table)
library(plyr)
library(tibble)

#Procesando datos
trabajos <- empleos.sv[-c(1, 1959, 2),]

#----------------------------Sumando por año-----------------------------
sumaEmpleos2001 <- sum(trabajos$X200101)+sum(trabajos$X200102)+
                   sum(trabajos$X200103)+sum(trabajos$X200104)+
                   sum(trabajos$X200105)+sum(trabajos$X200106)+
                   sum(trabajos$X200107)+sum(trabajos$X200108)+
                   sum(trabajos$X200109)+sum(trabajos$X200110)+
                   sum(trabajos$X200111)+sum(trabajos$X200112)

sumaEmpleos2002 <- sum(trabajos$X200201)+sum(trabajos$X200202)+
  sum(trabajos$X200203)+sum(trabajos$X200204)+
  sum(trabajos$X200205)+sum(trabajos$X200206)+
  sum(trabajos$X200207)+sum(trabajos$X200208)+
  sum(trabajos$X200209)+sum(trabajos$X200210)+
  sum(trabajos$X200211)+sum(trabajos$X200212)

sumaEmpleos2003 <- sum(trabajos$X200301)+sum(trabajos$X200302)+
  sum(trabajos$X200303)+sum(trabajos$X200304)+
  sum(trabajos$X200305)+sum(trabajos$X200306)+
  sum(trabajos$X200307)+sum(trabajos$X200308)+
  sum(trabajos$X200309)+sum(trabajos$X200310)+
  sum(trabajos$X200311)+sum(trabajos$X200312)

sumaEmpleos2004 <- sum(trabajos$X200401)+sum(trabajos$X200402)+
  sum(trabajos$X200403)+sum(trabajos$X200404)+
  sum(trabajos$X200405)+sum(trabajos$X200406)+
  sum(trabajos$X200407)+sum(trabajos$X200408)+
  sum(trabajos$X200409)+sum(trabajos$X200410)+
  sum(trabajos$X200411)+sum(trabajos$X200412)

sumaEmpleos2005 <- sum(trabajos$X200501)+sum(trabajos$X200502)+
  sum(trabajos$X200503)+sum(trabajos$X200504)+
  sum(trabajos$X200505)+sum(trabajos$X200506)+
  sum(trabajos$X200507)+sum(trabajos$X200508)+
  sum(trabajos$X200509)+sum(trabajos$X200510)+
  sum(trabajos$X200511)+sum(trabajos$X200512)

sumaEmpleos2006 <- sum(trabajos$X200601)+sum(trabajos$X200602)+
  sum(trabajos$X200603)+sum(trabajos$X200604)+
  sum(trabajos$X200605)+sum(trabajos$X200606)+
  sum(trabajos$X200607)+sum(trabajos$X200608)+
  sum(trabajos$X200609)+sum(trabajos$X200610)+
  sum(trabajos$X200611)+sum(trabajos$X200612)

sumaEmpleos2007 <- sum(trabajos$X200701)+sum(trabajos$X200702)+
  sum(trabajos$X200703)+sum(trabajos$X200704)+
  sum(trabajos$X200705)+sum(trabajos$X200706)+
  sum(trabajos$X200707)+sum(trabajos$X200708)+
  sum(trabajos$X200709)+sum(trabajos$X200710)+
  sum(trabajos$X200711)+sum(trabajos$X200712)

sumaEmpleos2008 <- sum(trabajos$X200801)+sum(trabajos$X200802)+
  sum(trabajos$X200803)+sum(trabajos$X200804)+
  sum(trabajos$X200805)+sum(trabajos$X200806)+
  sum(trabajos$X200807)+sum(trabajos$X200808)+
  sum(trabajos$X200809)+sum(trabajos$X200810)+
  sum(trabajos$X200811)+sum(trabajos$X200812)

sumaEmpleos2009 <- sum(trabajos$X200901)+sum(trabajos$X200902)+
  sum(trabajos$X200903)+sum(trabajos$X200904)+
  sum(trabajos$X200905)+sum(trabajos$X200906)+
  sum(trabajos$X200907)+sum(trabajos$X200908)+
  sum(trabajos$X200909)+sum(trabajos$X200910)+
  sum(trabajos$X200911)+sum(trabajos$X200912)

sumaEmpleos2010 <- sum(trabajos$X201001)+sum(trabajos$X201002)+
  sum(trabajos$X201003)+sum(trabajos$X201004)+
  sum(trabajos$X201005)+sum(trabajos$X201006)+
  sum(trabajos$X201007)+sum(trabajos$X201008)+
  sum(trabajos$X201009)+sum(trabajos$X201010)+
  sum(trabajos$X201011)+sum(trabajos$X201012)

sumaEmpleos2011 <- sum(trabajos$X201101)+sum(trabajos$X201102)+
  sum(trabajos$X201103)+sum(trabajos$X201104)+
  sum(trabajos$X201105)+sum(trabajos$X201106)+
  sum(trabajos$X201107)+sum(trabajos$X201108)+
  sum(trabajos$X201109)+sum(trabajos$X201110)+
  sum(trabajos$X201111)+sum(trabajos$X201112)

sumaEmpleos2012 <- sum(trabajos$X201201)+sum(trabajos$X201202)+
  sum(trabajos$X201203)+sum(trabajos$X201204)+
  sum(trabajos$X201205)+sum(trabajos$X201206)+
  sum(trabajos$X201207)+sum(trabajos$X201208)+
  sum(trabajos$X201209)+sum(trabajos$X201210)+
  sum(trabajos$X201211)+sum(trabajos$X201212)

sumaEmpleos2013 <- sum(trabajos$X201301)+sum(trabajos$X201302)+
  sum(trabajos$X201303)+sum(trabajos$X201304)+
  sum(trabajos$X201305)+sum(trabajos$X201306)+
  sum(trabajos$X201307)+sum(trabajos$X201308)+
  sum(trabajos$X201309)+sum(trabajos$X201310)+
  sum(trabajos$X201311)+sum(trabajos$X201312)

sumaEmpleos2014 <- sum(trabajos$X201401)+sum(trabajos$X201402)+
  sum(trabajos$X201403)+sum(trabajos$X201404)+
  sum(trabajos$X201405)+sum(trabajos$X201406)+
  sum(trabajos$X201407)+sum(trabajos$X201408)+
  sum(trabajos$X201409)+sum(trabajos$X201410)+
  sum(trabajos$X201411)+sum(trabajos$X201412)

sumaEmpleos2015 <- sum(trabajos$X201501)+sum(trabajos$X201502)+
  sum(trabajos$X201503)+sum(trabajos$X201504)+
  sum(trabajos$X201505)+sum(trabajos$X201506)+
  sum(trabajos$X201507)+sum(trabajos$X201508)+
  sum(trabajos$X201509)+sum(trabajos$X201510)+
  sum(trabajos$X201511)+sum(trabajos$X201512)

sumaEmpleos2016 <- sum(trabajos$X201601)+sum(trabajos$X201602)+
  sum(trabajos$X201603)+sum(trabajos$X201604)+
  sum(trabajos$X201605)+sum(trabajos$X201606)+
  sum(trabajos$X201607)+sum(trabajos$X201608)+
  sum(trabajos$X201609)+sum(trabajos$X201610)+
  sum(trabajos$X201611)+sum(trabajos$X201612)

sumaEmpleos2017 <- sum(trabajos$X201701)+sum(trabajos$X201702)+
  sum(trabajos$X201703)+sum(trabajos$X201704)+
  sum(trabajos$X201705)+sum(trabajos$X201706)+
  sum(trabajos$X201707)+sum(trabajos$X201708)+
  sum(trabajos$X201709)+sum(trabajos$X201710)+
  sum(trabajos$X201711)+sum(trabajos$X201712)

#Creado data frame

datanual <- data.frame("year" = 2001:2017, 
                       "empleos"= c(sumaEmpleos2001, sumaEmpleos2002, sumaEmpleos2003, 
                                    sumaEmpleos2004, sumaEmpleos2005, sumaEmpleos2006, 
                                    sumaEmpleos2007, sumaEmpleos2008, sumaEmpleos2009, 
                                    sumaEmpleos2010, sumaEmpleos2011, sumaEmpleos2012, 
                                    sumaEmpleos2013, sumaEmpleos2014, sumaEmpleos2015, 
                                    sumaEmpleos2016, sumaEmpleos2017))

#grafico de empleos per ano
ggplot(datanual, aes(x=datanual$year, y=datanual$empleos)) +
  geom_line(color="blue")+
  geom_point(color="blue")+
  labs(x="Año", y="Empleos generados", title="Empleos per año")

#---------------------------Por categoria------------------------------

#2001
a2001 <- trabajos %>%
  select(6,7,8,9,10,11,12,13,14,15,16,17)
perRama2001 <- data.frame("Rama" = trabajos$Rama,"Empleos"=rowSums(a2001)/1000)
ap2001<-data.frame(tapply(perRama2001$Empleos, perRama2001$Rama, FUN=sum))
ap2001<-t(ap2001)
rownames(ap2001) <- NULL
ap2001 <- ap2001

#2002
a2002 <- trabajos %>%
  select(18,19,20,21,22,23,24,25,26,27,28,29)
perRama2002 <- data.frame("Rama" = trabajos$Rama,"Empleos"=rowSums(a2002)/1000)
ap2002<-tapply(perRama2002$Empleos, perRama2002$Rama, FUN=sum)
ap2002<-t(ap2002)
rownames(ap2002) <- NULL
ap2002 <- data.frame(ap2002[,-c(1)])
ap2002 <- t(ap2002)
rownames(ap2002) <- NULL

#2003
a2003 <- trabajos %>%
  select(30,31,32,33,34,35,36,37,38,39,40,41)
perRama2003 <- data.frame("Rama" = trabajos$Rama,"Empleos"=rowSums(a2003)/1000)
ap2003<-tapply(perRama2003$Empleos, perRama2003$Rama, FUN=sum)
ap2003<-t(ap2003)
rownames(ap2003) <- NULL
ap2003 <- data.frame(ap2003[,-c(1)])
ap2003 <- t(ap2003)
rownames(ap2003) <- NULL

#2004
a2004 <- trabajos %>%
  select(42:53)
perRama2004 <- data.frame("Rama" = trabajos$Rama,"Empleos"=rowSums(a2004)/1000)
ap2004<-tapply(perRama2004$Empleos, perRama2004$Rama, FUN=sum)
ap2004<-t(ap2004)
rownames(ap2004) <- NULL
ap2004 <- data.frame(ap2004[,-c(1)])
ap2004 <- t(ap2004)
rownames(ap2004) <- NULL

#2005
a2005 <- trabajos %>%
  select(42:53)
perRama2005 <- data.frame("Rama" = trabajos$Rama,"Empleos"=rowSums(a2005)/1000)
ap2005<-tapply(perRama2005$Empleos, perRama2005$Rama, FUN=sum)
ap2005<-t(ap2005)
rownames(ap2005) <- NULL
ap2005 <- data.frame(ap2005[,-c(1)])
ap2005 <- t(ap2005)
rownames(ap2005) <- NULL

#2006
a2006 <- trabajos %>%
  select(54:65)
perRama2006 <- data.frame("Rama" = trabajos$Rama,"Empleos"=rowSums(a2006)/1000)
ap2006<-tapply(perRama2006$Empleos, perRama2006$Rama, FUN=sum)
ap2006<-t(ap2006)
rownames(ap2006) <- NULL
ap2006 <- data.frame(ap2006[,-c(1)])
ap2006 <- t(ap2006)
rownames(ap2006) <- NULL

#2007
a2007 <- trabajos %>%
  select(66:77)
perRama2007 <- data.frame("Rama" = trabajos$Rama,"Empleos"=rowSums(a2007)/1000)
ap2007<-tapply(perRama2007$Empleos, perRama2007$Rama, FUN=sum)
ap2007<-t(ap2007)
rownames(ap2007) <- NULL
ap2007 <- data.frame(ap2007[,-c(1)])
ap2007 <- t(ap2007)
rownames(ap2007) <- NULL

#2008
a2008 <- trabajos %>%
  select(78:89)
perRama2008 <- data.frame("Rama" = trabajos$Rama,"Empleos"=rowSums(a2008)/1000)
ap2008<-tapply(perRama2008$Empleos, perRama2008$Rama, FUN=sum)
ap2008<-t(ap2008)
rownames(ap2008) <- NULL
ap2008 <- data.frame(ap2008[,-c(1)])
ap2008 <- t(ap2008)
rownames(ap2008) <- NULL

#2009
a2009 <- trabajos %>%
  select(90:101)
perRama2009 <- data.frame("Rama" = trabajos$Rama,"Empleos"=rowSums(a2009)/1000)
ap2009<-tapply(perRama2009$Empleos, perRama2009$Rama, FUN=sum)
ap2009<-t(ap2009)
rownames(ap2009) <- NULL
ap2009 <- data.frame(ap2009[,-c(1)])
ap2009 <- t(ap2009)
rownames(ap2009) <- NULL

#2010
a2010 <- trabajos %>%
  select(102:113)
perRama2010 <- data.frame("Rama" = trabajos$Rama,"Empleos"=rowSums(a2010)/1000)
ap2010<-tapply(perRama2010$Empleos, perRama2010$Rama, FUN=sum)
ap2010<-t(ap2010)
rownames(ap2010) <- NULL
ap2010 <- data.frame(ap2010[,-c(1)])
ap2010 <- t(ap2010)
rownames(ap2010) <- NULL

#2011
a2011 <- trabajos %>%
  select(114:125)
perRama2011 <- data.frame("Rama" = trabajos$Rama,"Empleos"=rowSums(a2011)/1000)
ap2011<-tapply(perRama2011$Empleos, perRama2011$Rama, FUN=sum)
ap2011<-t(ap2011)
rownames(ap2011) <- NULL
ap2011 <- data.frame(ap2011[,-c(1)])
ap2011 <- t(ap2011)
rownames(ap2011) <- NULL

#2012
a2012 <- trabajos %>%
  select(126:137)
perRama2012 <- data.frame("Rama" = trabajos$Rama,"Empleos"=rowSums(a2012)/1000)
ap2012<-tapply(perRama2012$Empleos, perRama2012$Rama, FUN=sum)
ap2012<-t(ap2012)
rownames(ap2012) <- NULL
ap2012 <- data.frame(ap2012[,-c(1)])
ap2012 <- t(ap2012)
rownames(ap2012) <- NULL

#2013
a2013 <- trabajos %>%
  select(138:149)
perRama2013 <- data.frame("Rama" = trabajos$Rama,"Empleos"=rowSums(a2013)/1000)
ap2013<-tapply(perRama2013$Empleos, perRama2013$Rama, FUN=sum)
ap2013<-t(ap2013)
rownames(ap2013) <- NULL
ap2013 <- data.frame(ap2013[,-c(1)])
ap2013 <- t(ap2013)
rownames(ap2013) <- NULL


#2014
a2014 <- trabajos %>%
  select(150:161)
perRama2014 <- data.frame("Rama" = trabajos$Rama,"Empleos"=rowSums(a2014)/1000)
ap2014<-tapply(perRama2014$Empleos, perRama2014$Rama, FUN=sum)
ap2014<-t(ap2014)
rownames(ap2014) <- NULL
ap2014 <- data.frame(ap2014[,-c(1)])
ap2014 <- t(ap2014)
rownames(ap2014) <- NULL

#2015
a2015 <- trabajos %>%
  select(162:173)
perRama2015 <- data.frame("Rama" = trabajos$Rama,"Empleos"=rowSums(a2015)/1000)
ap2015<-tapply(perRama2015$Empleos, perRama2015$Rama, FUN=sum)
ap2015<-t(ap2015)
rownames(ap2015) <- NULL
ap2015 <- data.frame(ap2015[,-c(1)])
ap2015 <- t(ap2015)
rownames(ap2015) <- NULL

#2016
a2016 <- trabajos %>%
  select(174:185)
perRama2016 <- data.frame("Rama" = trabajos$Rama,"Empleos"=rowSums(a2016)/1000)
ap2016<-tapply(perRama2016$Empleos, perRama2016$Rama, FUN=sum)
ap2016<-t(ap2016)
rownames(ap2016) <- NULL
ap2016 <- data.frame(ap2016[,-c(1)])
ap2016 <- t(ap2016)
rownames(ap2016) <- NULL


#2017
a2017 <- trabajos %>%
  select(162:173)
perRama2017 <- data.frame("Rama" = trabajos$Rama,"Empleos"=rowSums(a2017)/1000)
ap2017<-tapply(perRama2017$Empleos, perRama2017$Rama, FUN=sum)
ap2017<-t(ap2017)
rownames(ap2017) <- NULL
ap2017 <- data.frame(ap2017[,-c(1)])
ap2017 <- t(ap2017)
rownames(ap2017) <- NULL

#unir rows
compAn <- rbind(ap2001, ap2002[1,],ap2003[1,],ap2004[1,],ap2005[1,],
                ap2006[1,], ap2007[1,], ap2008[1,], ap2009[1,], 
                ap2010[1,], ap2011[1,], ap2012[1,], ap2013[1,],
                ap2014[1,], ap2015[1,], ap2016[1,], ap2017[1,])
compAn <- t(compAn)
rownames(compAn) <- NULL
compAn<-cbind(compAn, c(2001, 2002, 2003, 2004,2005,2006,2007,2008,
                        2009, 2010, 2011, 2012, 2013, 2014,
                        2015, 2016, 2017))
colnames(compAn) <- c("agri", "minas", "industria", "year")
fram <- data.frame(compAn)

ggplot(fram, aes(x=year)) + 
  geom_line(aes(y = agri), color = "darkred") + 
  geom_line(aes(y = minas), color="steelblue") + 
  geom_line(aes(y = industria), color="yellow") 


#------------Dataset estadisticas escolares-------------------
datosSoya <- data.frame(filter(datos.escolar2017, MUN == 617))

datosSoyaNB <- data.frame("id"=c(1,2,3), "grado" = c("Sin transicion", "Primer bachillerato General", "Primer Bachillerato Tecnico"), "matriculados"=c(((sum(datosSoya$G9_T)- sum(datosSoya$BG1_T)-  sum(datosSoya$BT1_T))/sum(datosSoya$G9_T))*100, (sum(datosSoya$BG1_T)/sum(datosSoya$G9_T))*100, (sum(datosSoya$BT1_T)/sum(datosSoya$G9_T))*100))

blank_theme <- theme_minimal()+
  theme(
    axis.title.x = element_blank(),
    axis.title.y = element_blank(),
    panel.border = element_blank(),
    panel.grid=element_blank(),
    axis.ticks = element_blank(),
    plot.title=element_text(size=14, face="bold")
  )

bp<- ggplot(datosSoyaNB, aes(x="id", y=matriculados, fill=grado)) +
  geom_bar(stat="identity", width=1) +
  coord_polar("y", start=0)+ scale_fill_grey() +  blank_theme +
  theme(axis.text.x=element_blank()) +
  geom_text(aes(y = matriculados/3 + c(0, cumsum(matriculados)[-length(matriculados)]), 
                label = (format(round(matriculados, 2), nsmall = 2))), size=3)
bp

#---------------Variables
matriculadosU2017 <- 172593
egresadosBachi <- sum(datos.escolar2017$BG2_T)+sum(datos.escolar2017$BT3_T)+datos.escolar2017$BT4_T)
