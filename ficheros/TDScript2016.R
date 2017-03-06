#Se instalan y cargan los paquetes necesarios
install.packages('plyr')
install.packages('igraph')
install.packages('sqldf')
install.packages('ggplot2')
install.packages('DBI')
install.packages('RSQLite')
install.packages('gdata')
install.packages('foreign')
install.packages('knitr')

library(plyr)
library(igraph)
library(sqldf)
library(ggplot2)
library(DBI)
library(RSQLite)
library(gdata)
library(foreign)
library(knitr)

#Se cargan las Funciones
setwd("~/ruta/hasta/carpeta/files/")
source(file="funciones_v4_redux.r")

#Se cargan los datos en el sistema: creación del dataframe principal
WoS=isi_cargar("~/ruta/hasta/carpeta/files/txt/")

#Se crea la BD en SQLite: "wos.db"
isi_exportar_sqlite(WoS,"WoS")

#UNa tabla de frecuencias sencilla consultando el dataframe principal en R:
q=as.data.frame(table(WoS$PY))
q=cbind(q,F.Acum=cumsum(q$Freq))
knitr::kable(q)

#Se crean los diferentes Dataframes, separando campos múltiples:
autores <- isi_separar(WoS,"AU")
direcciones <- isi_separar(WoS,"C1")
temas <- isi_separar(WoS,"WC")
categ <- isi_separar(WoS,"SC")
referencias <- isi_separar(WoS,"CR")

#Se exportan los dataframes como tablas en la BD externa
isi_exportar_sqlite(autores,"AU")
isi_exportar_sqlite(direcciones,"C1")
isi_exportar_sqlite(temas,"WC")
isi_exportar_sqlite(categ,"SC")
isi_exportar_sqlite(referencias,"CR")

#Se exportan los datos en tablas para su uso con Excel, SPSS, etc.
write.table(WoS, "wos.txt", sep="\t")
write.csv(WoS, file = "wos.csv")
library(xlsx)
write.xlsx(WoS, "wos.xlsx")

#Algunos Indicadores Unidimensionales
isi_unimetrics_wos(WoS,"PY")
isi_unimetrics_wos(WoS,"DT")
isi_unimetrics_wos(WoS,"LA")
isi_unimetrics_wos(WoS,"ACUM")

attach(WoS)
su_WoS=subset(WoS, grepl("Physics*",WC), select=c(IDU,PY, SC,WC, TC))

# ============== USO DE 'sqldf' PARA HACER CONSULTAS SQL SOBRE DATAFRAMES ==============

#Consulta top 10 de autores
sqldf("select AF, count(IDU) as total FROM autores GROUP BY AF ORDER BY total DESC limit 10")
	
#Metemos los datos de la consulta en un nuevo dataframe
topautores=sqldf("select AF, count(IDU) as total FROM autore GROUP BY AF ORDER BY total DESC limit 10")
	
#Utilizamos la libreria 'ggplot2' para hacer un gráfico con ellos
qplot(topautores$AF, topautores$total, geom='bar', stat='identity', fill=topautores$AF, las=2)+xlab('')+ylab('Publicaciones')+ theme(axis.text.x = element_text(angle = 90, hjust = 1))

#Parejas para Redes Sociales
parejas=sqldf("select a.AU, b.AU FROM autores as a INNER JOIN autores as b ON a.IDU=b.IDU AND a.AU!=b.AU")

#Construcción de la red de coautoría
matrix=table(parejas)
g <- graph.adjacency(matrix, weighted = TRUE, mode = "undirected")
V(g)$label <- V(g)$name
V(g)$degree <- degree(g)
layout1 <- layout.fruchterman.reingold(g)
plot(g, layout=layout1)

# ======== Cálculo del numero de autores por documento =================

#Con SQLite
drv<-dbDriver("SQLite")
con<-dbConnect(drv, dbname ="wos.db")
num.au <- dbGetQuery (con, "SELECT IDU, PY, LENGTH(AU)-LENGTH(REPLACE( AU, ';', '' ))+1 AS NumAu FROM isi_t_pg")
n.au=num.au$NumAu
py=as.factor(num.au$PY)
ind.coa <- mean(n.au)
median.coa<-median (n.au)

#Con sqldf
num.au <- sqldf("SELECT IDU, PY, LENGTH(AU)-LENGTH(REPLACE( AU, ';', '' ))+1 AS NumAu FROM WoS")
n.au=num.au$NumAu
py=as.factor(num.au$PY)
ind.coa <- mean(n.au)
median.coa<-median (n.au)

#     ====== ÍNIDICES de COAUTORÍA ANUALES =========
ind.coa.anual <- as.data.frame (tapply(n.au,py,mean))
plot(ind.coa.anual, type="b",xlab="", ylab="co-author index", lwd=3, col="forestgreen",xaxt = "n")
axis(1, 1:length(levels(py)), labels=levels(py), col.axis="chocolate4")

#================CÁLCULO DEL INDICE H========================
h_index(WoS,"ALL")
h_index(WoS,"PY",2010)
h_index(WoS,"WC","Information Science & Library Science")
#==================================================================