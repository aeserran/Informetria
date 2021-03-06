trim = function( x ) {
  gsub("(^[[:space:]]+|[[:space:]]+$)", "", x)
}

isi_cargar = function(x){    
  a = list.files(path=x,pattern="*.txt")  
  b=paste(x, a, sep="")  
  z = do.call("rbind", lapply(b, function(x) read.delim(x,row.names=NULL, stringsAsFactors=FALSE, quote ="", na.strings = "", encoding="UTF-8")))
  names(z) = names(z)[-1]
  z = z[,-ncol(z)]
  z$IDU = seq_len(nrow(z))
  return(z)  
}

isi_separar = function(x,y){
  if (!require("plyr")) {
    install.packages("plyr")
    library(plyr)
  } 
  if (y=="C1"){    
    c1=subset(x, select = c(IDU,UT,C1,PY), C1 !='')
    ddply(c1,.(IDU,PY),function(y){
      z <- gsub(pattern ="\\[.+?\\]","", y$C1, perl=T)
      c1_dir = unlist(strsplit(as.character(z), split="; "))
      RS = data.frame(
        C1 = toupper(trim(c1_dir)),
        stringsAsFactors = FALSE
      )
      return(RS)
    })
  }
  else if (y=="CO"){    
    c2=subset(x, select = c(IDU,UT,C1,PY), C1 !='')
    ddply(c2,.(IDU,PY),function(y){
      c1 <- gsub(pattern ="\\[.+?\\]","", y$C1, perl=T)
      dirs = unlist(strsplit(as.character(c1), split="; "))
      dirs <- gsub(pattern =".*USA","USA", dirs, perl=T)
      vector_countries = list()
      for (dir in dirs){
        countries = unlist(strsplit(dir, split=', '))
        country = countries[length(countries)]
        vector_countries = append(country, vector_countries)
      }
  
      RS = data.frame(
        CO = toupper(unlist(vector_countries)),
        stringsAsFactors = FALSE
      )
      return(RS)
    })
  }
  else if(y=="AU"){
    ddply(x,.(IDU,PY),function(y){
      au_name = unlist(strsplit(as.character(y$AU), split="; "))
      au_fullname = unlist(strsplit(as.character(y$AF), split="; "))
      RS = data.frame(
        AU = toupper(au_name),
        AF = toupper(trim(au_fullname)),
        stringsAsFactors = FALSE
      )
      return(RS)
    })
  }
  else if(y=="WC"){
    ddply(x,.(IDU,PY),function(y){  
      wc_name = unlist(strsplit(as.character(y$WC), split="; "))
      RS = data.frame(
        WC = toupper(trim(wc_name)),
        stringsAsFactors = FALSE
      )
      return(RS)
    })
  }
  else if(y=="SC"){
    ddply(x,.(IDU,PY),function(y){  
      wc_name = unlist(strsplit(as.character(y$SC), split="; "))
      RS = data.frame(
        WC = toupper(trim(wc_name)),
        stringsAsFactors = FALSE
      )
      return(RS)
    })  
  }
  else if(y=="CR"){
    cr=subset(x, select = c(IDU,UT,CR,PY), CR !='')
    ddply(cr,.(IDU,PY),function(y){
      cr_name = unlist(strsplit(as.character(y$CR), split="; "))
      cr_doi=gsub(pattern=".*, (DOI ){1,2}", "DOI:",cr_name, perl=T)
      RS = data.frame(
        CR = toupper(trim(cr_name)),
        DOI= trim(cr_doi),
        stringsAsFactors = FALSE
      )
      return(RS)
    })
  }
}

isi_exportar_sqlite = function(x,y){
  if (!require("DBI")) {
    install.packages("DBI")
    library(DBI)
  }
  if (!require("RSQLite")) {
    install.packages("RSQLite")
    library(RSQLite)
  }
  drv=dbDriver("SQLite")
  con=dbConnect(drv, dbname ="pgwos.db")
  if(y=="WoS"){
    dbWriteTable(con, "isi_t_pg", x,overwrite=T)    
  }
  else if(y=="AU"){
    dbWriteTable(con, "isi_t_au", x,overwrite=T)
  }
  else if(y=="C1"){
    dbWriteTable(con, "isi_t_c1", x,overwrite=T)
  }
  else if(y=="WC"){
    dbWriteTable(con, "isi_t_wc", x,overwrite=T)
  }
  else if(y=="SC"){
  dbWriteTable(con, "isi_t_sc", x,overwrite=T)
  }
  else if(y=="CR"){
    dbWriteTable(con, "isi_t_cr", x, overwrite=T)
  }
  else if(y=="CO"){
    dbWriteTable(con, "isi_t_paises", x, overwrite=T)
  }
  dbDisconnect(con)
}

isi_unimetrics_wos = function(x,y,...){
  if (!require("ggplot2")) {
    install.packages("ggplot2")
    library(ggplot2)
  }
  #colores = matrix(hcl(0:5 * 60), 3, 2)
  if(y=="PY"){    
    qplot(factor(PY), data=x, geom="bar", fill=factor(PY))
  }
  else if(y=="DT"){
    #mosaicplot(table(x$PY,x$DT), las=1, col = colores, main = "Tip. Documental")
    qplot(factor(PY), data=x, geom="bar", fill=factor(DT))
  }
  else if(y=="LA"){
    #ggplot(datos, aes(PY))+ geom_bar() + facet_grid(LA ~ .)
    #mosaicplot(table(x$PY,x$LA), las=1, col = colores, main = "Idioma")
    qplot(factor(PY), data=x, geom="bar", fill=factor(LA))
  }
  else if(y=="ACUM"){
    q=as.data.frame(table(x$PY))
    q$'%'=round((q$Freq/sum(q$Freq))*100,3)
    q$Acum=cumsum(q$Freq)
    q$'%Acum'=cumsum(q$'%')
    q$Tasa=round(((q$Freq-q$Freq[1])/q$Freq[1])*100,3)
    return(q)
  }
}

isi_unimetrics_sqlite = function(p){
  if (!require("DBI")) {
    install.packages("DBI")
    library(DBI)
  }
  if (!require("RSQLite")) {
    install.packages("RSQLite")
    library(RSQLite)
  }
  drv=dbDriver("SQLite")
  con=dbConnect(drv, dbname ="pgwos.db")
  if(p=="A"){
    x=dbGetQuery(con,"SELECT COUNT(*) AS NAU, NPU FROM (SELECT rowid,  SUM( LENGTH( AU ) - LENGTH( REPLACE( AU, ';', '' ) ) +1 ) AS NPU FROM isi_t_pg GROUP BY rowid) GROUP BY NPU ORDER BY NAU ASC, NPU DESC")
    x$nt.acum=cumsum(x$NPU)
    x$na.acum=cumsum(x$NAU)
    x$nt.p=round(cumsum(x$NPU)/sum(x$NPU)*100,2)
    x$na.p=round(cumsum(x$NAU)/sum(x$NAU)*100,2)
    x$d.teo=round(x[1,2]/x$NPU^2,0)
    x$dif=x$NAU-round(x[1,2]/x$NPU^2,0)
    x$at.acum=cumsum(round(x[1,2]/x$NPU^2,0))
    x$at.p=round(cumsum(round(x[1,2]/x$NPU^2,0))/sum(round(x[1,2]/x$NPU^2,0))*100,2)
    plot(x$na.p, x$nt.p, type="l", col="red", ylab="% Acum. Trabajos",xlab="% Acum. Autores")
    lines(x$at.p, x$nt.p, col="blue")
    return(x)
  }
  else if(p=="B"){
    x=dbGetQuery(con,"SELECT COUNT(*) AS NRev, cnt AS NPub FROM (SELECT J9, COUNT(*) AS 'cnt' FROM isi_t_pg GROUP BY J9 ORDER BY cnt DESC) GROUP BY NPub ORDER BY NRev, NPub DESC")
    x$TNPub=x$NRev*x$NPub
    x$NPubAcum=cumsum(x$NRev)
    x$TNPubAcum=cumsum(x$TNPub)
    x$Porc=round(cumsum(x$TNPub/sum(x$TNPub))*100,3)
    plot(x$NPubAcum,x$Porc, type="l", xlab="Cumulative number of journals", ylab="% Cumulative")
    #plot(log10(x$NPubAcum),x$TNPubAcum, type="l")
    return(x)
  }
  dbDisconnect(con)
}

isi_multimetrics_sqlite = function(p){
  if (!require("DBI")) {
    install.packages("DBI")
    library(DBI)
  }
  if (!require("RSQLite")) {
    install.packages("RSQLite")
    library(RSQLite)
  }
  drv=dbDriver("SQLite")
  con=dbConnect(drv, dbname ="pgwos.db")
  if(p=="redes_au"){
    if (!require("igraph")) {
      install.packages("igraph")
      library(igraph)
    }
    x=dbGetQuery(con, "SELECT a.AU A, b.AU B FROM isi_t_au a, isi_t_au b WHERE a.IDU = b.IDU AND a.AU <> b.AU")
    MA=table(x)
    g=graph.adjacency(MA, weighted=TRUE,mode=c("undirected"))
    names=V(g)$name
    we=E(g)$weight
    l0=layout.fruchterman.reingold(g, dim=2,niter=10000)
    plot.igraph(g,layout=l0,vertex.size=(degree(g)/5),edge.width=we/10,
                vertex.label=names, vertex.label.dist=0.5, 
                vertex.label.color=heat.colors(100), 
                vertex.color=heat.colors(25), 
                vertex.frame.color=cm.colors(100), 
                edge.color=terrain.colors(500),
                vertex.label.cex=0.4, vertex.label.font=1)
  }
  else if(p=="ac_cat"){
    require("ca")
    x=dbGetQuery(con,"SELECT WC, PY FROM isi_t_wc")
    plot(ca(table(x)), mass=T, label=F)
  }
  dbDisconnect(con)
}

h_index=function (x,y,z){
  if (!require("plyr")) {
    install.packages("plyr")
    library(plyr)
  }
  if (y=="ALL"){
    dat=subset(x, select = c(PY, TC))
    dat=arrange(dat,desc(TC))
    cites=(dat$TC)
    year=dat$PY  
    val=0   
    n=length(cites)  
    rank=c(1:n)  
    order=order(cites, decreasing=T)  
    year=year[order]  
    totcit=cites[order]  
    dif=(cites-rank)  
    for(i in 1:n){
      if (dif[i]>=0)
        val[i]=1
      else    
        val[i]=0
    }
    valor_h_index=sum(val)
    cat("====================================","\n")
    cat("\n","El indice h es: ",valor_h_index, "\n")
    cat("====================================","\n")
  }
  else if(y=="PY"){
    dat=subset(x, select = c(PY, TC), PY ==z)
    dat=arrange(dat,desc(TC))
    cites=(dat$TC)
    year=dat$PY  
    val=0   
    n=length(cites)  
    rank=c(1:n)  
    order=order(cites, decreasing=T)  
    year=year[order]  
    totcit=cites[order]  
    dif=(cites-rank)  
    for(i in 1:n){
      if (dif[i]>=0)
        val[i]=1
      else    
        val[i]=0
    }
    valor_h_index=sum(val)
    #cat("====================================","\n")
    #cat("\n", z,"----", valor_h_index)
    #cat("====================================","\n")
    cat("\n", z,"---> h-index=", valor_h_index)
  }
  else if(y=="WC"){
    x=subset(x, select = c(IDU,PY,TC,WC), WC !='')
    ddply(x,.(IDU,PY,TC))
    unlist(strsplit(as.character(x$WC), split="; "))
    dat=subset(x,grepl(z,x$WC))
    dat=subset(dat, select = c(PY, TC))
    dat=arrange(dat,desc(TC))
    cites=(dat$TC)
    year=dat$PY  
    val=0   
    n=length(cites)  
    rank=c(1:n)  
    order=order(cites, decreasing=T)  
    year=year[order]  
    totcit=cites[order]  
    dif=(cites-rank)  
    for(i in 1:n){
      if (dif[i]>=0)
        val[i]=1
      else    
        val[i]=0
    }
    valor_h_index=sum(val)
    #cat("====================================","\n")
    #cat("\n","El indice h para ", z, "es", valor_h_index, "\n")
    #cat("====================================","\n")
    cat("\n", z,"---> h-index=", valor_h_index)
  }
}
