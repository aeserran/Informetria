---
title: "Metodologia"
author: "Preiddy Garcia"
date: "Sunday, October 19, 2014"
output: pdf_document
output:
  word_document: default
  html_document:
    number_sections: yes
---

Descargamos archivos fuentes de la WoS, formato csv separdo por tab.

```{r cargamos_librerias, echo=FALSE, warning=FALSE, message=FALSE}
#Espacio para cargar las librerias necesarias
#path <- "/home/preiddy/Documentos/Dropbox/Proyectos/R/metodologia/"
#setwd(path)
require(plyr)
require(sqldf)
require(igraph)
```



```{r cargamos_funciones, echo=FALSE, warning=FALSE}
PorAcum=function (x) {
  x$Porc<-round((x$Freq/sum(x$Freq))*100,3)
  x$Acum<-cumsum(x$Freq)
  x$PAcum<-cumsum(x$Porc)
  x$Tasa<-round(((x$Freq-x$Freq[1])/x$Freq[1])*100,3)
  return(x)
  }
```

```{r carga_archivo_wos, echo=FALSE, warning=FALSE}
#Es necesario añadir una columna con NULL para que no de errores
WoS<- read.delim(file="/home/preiddy/Proyectos/R/metodologia/txt/ahi_tab_mac.txt", row.names=NULL, stringsAsFactors=FALSE, quote = "", encoding="UTF-8")
#Como se agrega columna vacia, los nombres de los campos se desplazan una columna, por lo que es necesario corregirlos
names(WoS) <- names(WoS)[-1]
#Eliminamos la columna
WoS <- WoS[,-ncol(WoS)]
#Agregamos columna con id de articulos.
WoS$ID <- seq_len(nrow(WoS))
```

Tasa de crecimiento anual.

```{r, results='asis'}
fecha<-as.data.frame(table(WoS$PY))
knitr::kable(PorAcum(fecha))
```

DF con solo los item citables

```{r, echo=FALSE, warning=FALSE}
#WoS.article<-subset(WoS, DT == 'Article')
```

Autores por documento
```{r, echo=FALSE, warning=FALSE}
au_doc<-sqldf("SELECT COUNT(*) AS NAU, NPU FROM (SELECT rowid,  SUM( LENGTH( AU ) - LENGTH( REPLACE( AU, ';', '' ) ) +1 ) AS NPU FROM WoS GROUP BY id) GROUP BY NPU ORDER BY NAU ASC, NPU DESC")
```

```{r, results='asis'}
knitr::kable(au_doc)
```

Creamos dataframe de autores y categorias por ut
```{r, echo=FALSE, warning=FALSE}
AU_UT <- ddply(WoS,.(ID),function(x){  
  au_name <- unlist(strsplit(as.character(x$AU), split="; "))
  RS <- data.frame(
    UT = x$UT,
    AU = au_name,
    stringsAsFactors = FALSE
  )
  return(RS)
})
WC_UT <- ddply(WoS,.(ID),function(x){  
  wc_name <- unlist(strsplit(as.character(x$WC), split="; "))
  RS <- data.frame(
    UT = x$UT,
    WC = wc_name,
    stringsAsFactors = FALSE
  )
  return(RS)
})
```

Parejas de autores bi-direccional

```{r}
AU_bd<-sqldf("SELECT a.AU AS aa, b.AU AS bb FROM AU_UT a, AU_UT b WHERE a.UT=b.UT AND a.AU<>b.AU")

MA=table(AU_bd)
g=graph.adjacency(MA, weighted=TRUE,mode=c("undirected"))
names=V(g)$name
l0=layout.fruchterman.reingold(g, dim=2,niter=10000)
plot.igraph(g, 
            layout=l0, 
            vertex.size=log(degree(g))+1,
            vertex.label=names,
            vertex.color="#ff0000", 
            vertex.frame.color="#ff0000", 
            edge.color="#555555", 
            vertex.label.dist=0.5, 
            vertex.label.cex=0.6, 
            vertex.label.font=1,
            edge.arrow.size=0.3,
            edge.curved = TRUE
            )
```

Red de parejas de autores unidireccional
```{r}
AU_un<-sqldf("SELECT a.AU AS aa, b.AU AS bb FROM AU_UT a, AU_UT b WHERE a.UT=b.UT AND a.AU<b.AU")
g <- graph.data.frame(AU_un, directed = TRUE)
plot(g, layout=layout.fruchterman.reingold, edge.curved = TRUE)
```



conteo<-sqldf("SELECT CONCAT(aa||bb) FROM AU_bd")




```{r}
#Limpiamos espacio de trabajo
rm(list=ls())
```

