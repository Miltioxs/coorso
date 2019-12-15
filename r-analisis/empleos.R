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
perRama2001 <- data.frame("Rama" = trabajos$Rama,"Empleos"=rowSums(a2001))
ap2001<-data.frame(tapply(perRama2001$Empleos, perRama2001$Rama, FUN=sum))
ap2001<-t(ap2001)
colnames(ap2001)



#2017
a2017 <- trabajos %>%
  select(198,199,200,201,202,203,204,205,206,207,208,209)
perRama2017 <- data.frame("Rama" = trabajos$Rama,"Empleos"=rowSums(a2017))
ap2017<-data.frame(tapply(perRama2017$Empleos, perRama2017$Rama, FUN=sum))
cat2017<- ap2017 %>% rownames_to_column("id")
colnames(cat2017) <- c("ramas","empleos")
cat2017 <- cat2017[-c(1),]


ggplot()+ geom_histogram(data=perRama2001, 
                         aes(x=orangeec$Creat.Ind...GDP), 
                         fill="blue",color="green", 
                         binwidth = 1)+
  labs(x="% Aporte de economia naranja al PIB", 
       y="Cantidad de paises", 
       title="Contribución  de la economía naranja en LATAM")+
  theme(legend.position = "none")+
  theme(panel.background = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())