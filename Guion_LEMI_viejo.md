#Taller de doctorado: Laboratorio de Estudios Métricos de Información

***

___

##Parte I: Conceptos generales de metodología

###1.1. Bibliometría de escritorio
> Desde que J.S. Katz y Diana Hicks (1997) propusieran el término Desktop Scientometrics se ha ido consolidando un "concepto" o "filosofía" de trabajo en relación con los estudios (biblio-) métricos que se ha caracterizado por el uso de herramientas informáticas personales (hardware y software) cada vez mas potentes y por la creciente disponibilidad de bases de datos susceptibles de uso bibliométrico.  
En estos [últimos] años se ha llevado a cabo un proceso paralelo en relación con la aparición y desarrollo de aplicaciones de software libre, generalmente disponibles en formato multiplataforma, muy accesibles y suministradas en diversos niveles de implementación que posibilitan su uso por diferentes tipos de usuarios. 
En este sentido, en el ámbito de los estudios métricos de información es habitual el uso de lenguajes de programación como Perl (García González, 2010) o Python (Grauwin y Jensen, 2011), la utilización de gestores de bases de datos como MySQL (Anuradha y Urs, 2007; Han y Sun, 2014), Postgre (Bowman y otros, 2014) o SQlite (Gagolewski, 2011), o los análisis llevados a cabo con aplicaciones como Pajek (Zhang, y otros, 2013), CiteSpace (Chen y otros, 2012) o Gephi (Leydesdorff y Rafols, 2012). Todas estas aplicaciones están disponibles para su uso libre y suponen una nueva forma de entender la investigación [...].

> (Efraín-García & García-Zorita, 2016)

#####Las tres fases de la metodología bibliométrica: 

+ Obtención - de datos susceptibles de uso bibliométrico
+ Gestión - y tratamiento de los datos, mediante sistemas de gestión de bases de datos y lenguajes de programación.
+ Elaboración - de indicadores bibliométricos mediante el uso de herramientas estadísticas.

![Figura me02][me02]

##### Los métodos bibliométricos cuando hay pocos datos.
![Figura me03][me03]
##### Los métodos bibliométricos cuando los datos SON 'masivos'.
![Figura me03b][me03b]

##### Una metodología en el LEMI:
Producto de varias tesis de carácter metodólogico realizadas en el grupo de investigación.

![Figura me04][me04]

###1.2. La obtención de Datos: 
Se emplean fuentes de información susceptibles de uso bibliométrico. 
La unidad de información la constituye el documento científico (fuentes primarias) y su subrogación (representación) en bases de datos bibiográficas (fuentes secundarias).


#### Datos bibliográficos, datos bibliométricos:

![Figura me01][me01]

#### Fuentes primarias:

+ Revistas científicas
+ Actas de congresos
+ Monografías
+ Tesis doctorales
+ Informes de investigación
+ Patentes

#### Principales fuentes secundarias:

+ Curriculum Vitae (Universitas XXI / Lattes)
+ Memorias de universidades y centros de investigación
+ Internet [...]
+ Bases de datos bibliográficas y factuales.
+ Bases de datos especializadas.
+ Bases de datos multidisciplinares
+ BBDD que incluyen referencias y citaciones (WoS / Scopus)
+ BBDD regionales (Recyt)

[me01]:http://danae.uc3m.es/Codiad/workspace/informetria/img/meto01.jpg
[me02]:http://danae.uc3m.es/Codiad/workspace/informetria/img/meto02.jpg
[me03]:http://danae.uc3m.es/Codiad/workspace/informetria/img/meto03.jpg
[me03b]:http://danae.uc3m.es/Codiad/workspace/informetria/img/meto03b.jpg
[me04]:http://danae.uc3m.es/Codiad/workspace/informetria/img/meto04.jpg




###1.3 Gestión de bases de datos para la bibliometría
La obtención y tratamiento (filtrado y normalización) de los datos bibliográficos necesoitan de sistemas de gestión que permitna administrar la información susceptible de uso bibliométrico. Cuando los datos son de carécter masivo (por encima de unas decenas de miles de registros9 se hace imprescindible el uso de gestores de bases de datos. Los mas frecuentes son MySQL y POstgre (que necesitan servidores dedicados). Una solución sencilla y útil en el caso de estudios de dimensión media-alta es SQLite (en particular su versón como plugin de Firefox).

####1.3.1 SQLite
> Para pequeños y medianos volúmenes de datos que no requieren grandes operaciones de cálculo existen opciones de software livianas y amigables, como por ejemplo SQLite, cuya instalación y manejo aprenderemos en los siguientes epígrafes.

Utilizaremos una *extensión* de *Firefox* que instala el gestor de bases de datos relacionales denominado [SQLite].
Instalarlo es sencillo, basta con que se carge el compelmento correspondiente en el *administrador de complementos*:

![Figura sq01][sql01]

El gestor de la base de datos relacional estará disponible en el menu de `Herramientas/Tools` del navegador **Firefox**. Si se *pincha* en dicho complemento, tendremos acceso (esto se puede modificar en las *opciones* de la aplicación) normalmente a la última base de datos creada con todas sus tablas. 

La primera vez que accedamos al gestor será necesario crear una base de datos nueva, dándole el nombre que queramos (la extensión se añadirá por defecto según lo que se establezca en las opciones, normalmente *.db o .sqlite*) cuando nos lo pidan:

![Figura sq02][sql02]

Una vez creada  la be asde datos, desde el punto de vista del trabajo bibliométrico, no será necesario diseñar las tablas a crear pues la utilidad de este gestor es que permite la importación *directa* de datos:

![Figura sq03][sql03]

Desde bases de datos susceptibles de uso bibliométrico como las de la *Web of Science*. Pulsándo en el icono corespondiente, podremos inportar ficheros de texto en `Formato delimitado por tabulador`

![Figura sq05][sql05]

Una vez activado el `Asistente de Importación` se deberá elegir el fichero de importación desde la pestaña `CSV` (aunque el archivo a importar tenga la extensión por defecto *.txt*), a continuación se introducirá el nombre de la tabal en la que los datos serán importados (por ejemplo, *isi\_t\_todo*), se selecciona como separador de campos la opción `Tab` y se deja el resto de opciones por defecto. Debe prestarse atención a dejar marcada la opción de `La primera línea contiene los nombres de las columnas`. De igual modo, es conveniente que se marque la opción `Ignore Trailing Separator/Delimiters` pues evitará lecturas erróneas de datos

![Figura sq04][sql04]

La aplicación procederá a importar los registros correspondientes y mostrará para que la revisemos la esrtuctura de la tabla.  Los nombres de las columnas se correponderán con las etiquetas de los campos de la base de datos bibliográfica. 

> No será necesario modificar la columna correspondiente al *Tipo de Datos*, salvo excepciones como el año de publicación **PY** que sería conveniente seleccionar el tipo *INTEGER* para considerarlo como campo númerico, de igual modo debe hacerse, por precaución, con otros campos como el número de veces citado **TC** u otros.

![Figura sq06][sql06]

> Por otra parte, es frecuente que en el proceso de importación aparezcan errores (registros que no se importan) debido a que contienen caracteres incompatibles con dicho proceso como *comillas simples* (p.ej: O'Connor) o *comillas dobles* u otros símbolos: `&, $, %`. La aplicación mostrará en una ventana emergente el numero de registros con fallos y a qué líneas corresponden. En este caso será necesario utilizar un editor de *texto plano* para localizar los registros erróneos y eliminar estos caracteres.

> Una alternativa de importación que funciona (si el contenido de los campos es inferior a 255 caracteres) es utilizar una Hoja de Cálculo como la de *Libre Office* (recomendable por poseer habitualmente una mejor compatibilidad con la codificación de caracteres UTF-8) o *Microsoft Office*, para pasar los datos a formato `.csv`, en cuyo caso deberá utilizarse como separador de campo el carácter ` ; `.

Una vez completado el proceso de importación (en el caso de la WoS ahbrá que repetir el proceso por cada 500 registros importados) tendremos la tabla (*isi\_t\_todo*) con todos los registros importados listos para hacer sobre ellos las `CONSULTAS` necesarias.

![Figura sq07][sql07]

[sql01]: http://danae.uc3m.es/Codiad/workspace/informetria/img/Sqlite01.jpg
[sql02]: http://danae.uc3m.es/Codiad/workspace/informetria/img/Sqlite02.jpg
[sql03]: http://danae.uc3m.es/Codiad/workspace/informetria/img/Sqlite03.jpg
[sql05]: http://danae.uc3m.es/Codiad/workspace/informetria/img/Sqlite05.jpg
[sql04]: http://danae.uc3m.es/Codiad/workspace/informetria/img/Sqlite04.jpg
[sql06]: http://danae.uc3m.es/Codiad/workspace/informetria/img/Sqlite06.jpg
[sql07]: http://danae.uc3m.es/Codiad/workspace/informetria/img/Sqlite07.jpg

[SQLite]: http://www.sqlite.org/


##Parte II

###2.1 Uso de servidores dedicados: LAMP / WAMP / MAMP

El acrónimo LAMP se refiere a una serie de servicios inux, Apache, MySQL y Perl/PHP/Python) que permiten la creación de un sistema de bases de datos con servidor Web de una forma relativamente rápida y sencilla, dependiendo de nuestros conocimientos informáticos previos.

Inicialmente LAMP se refiere a la instalación en un servidor con sistema operativo Linux del servidor Web Apache (o Apache2), el gestor de bases de datos MySQL y los lenguajes de programación PHP, Perl y/o Python, pero existen variantes de esta instalación para otros sistemas operativos, como Windows (WAMP) o Mac/OSX (MAMP).

En el caso de que contemos con un servidor Linux que cuente con un gestor de paquetes propio (distribuciones basadas en Debian, RedHat, Suse, etc.) la instalación es muy sencilla, mientras que si nuestro terminal cuenta con un sistema opertativo Windows o Mac/OSX puede emplearse un software denominado XAMPP.

> En XAMPP la X se refiere a que puede utilizarse en diferentes sistemas operativos, mientras que el resto de siglas identifican los servicios que se instalarán con el paquete (MySQL, PHP y Perl).

####2.1.1 Gestión de bases de datos en servidores dedicados: MySQL / PostgreSQL / Oracle

###2.2 Software para el análisis estadístico

####2.2.1 El paquete estadístico R

#####2.2.1.1 Primeros pasos

Hay muchos recursos disponibles en la red que ayudan a instalar y utilizar el software libre de programación y tratamiento estadístico conocido como *R-project*. Para iniciarse en el uso de `R` son muy recomendables los siguientes videotutoriales:

+ Instalación de R: [Videotutorial de la Universidad de Deusto/1 (2012)][INTRO-R]
+ Ayudas y facilidades en R: [Videotutorial de la Universidad de Deusto/2 (2012)][AYU-R]
+ Leer y escribir Datos en R: [Videotutorial de la Universidad de Deusto/3 (2012)][LEER-R]
+ Tipos de Datos en R: [Videotutorial de la Universidad de Deusto/4 (2012)][TIPOS-R]
+ Primeros pasos para analizar datos: [Videotutorial de la Universidad de Deusto/5 (2012)][DATOS-R]
 

[INTRO-R]:http://www.youtube.com/watch?feature=player_detailpage&v=dpiApWbgSw8
[AYU-R]: http://www.youtube.com/watch?v=WmkRHVXsM08
[LEER-R]: http://www.youtube.com/watch?v=77tTfjx5hhs
[TIPOS-R]: http://www.youtube.com/watch?v=U4uO4TIIzjs
[DATOS-R]: http://www.youtube.com/watch?v=uK31EnqbH

Recursos adicionales:

+ Quick-R: [Manual en línea de R, en inglés][QUICK]
+ Short Reference Card: Un resumen de las principales [Funciones de R (en inglés también)][SHORT]
+ Faltaría uno en castellano....

[QUICK]: http://www.statmethods.net/index.html
[SHORT]: http://cran.r-project.org/doc/contrib/Short-refcard.pdf

#### 2.2.1.2 Comandos básicos en R

Aquí porponemos una lista de comandos y funciones que están entre las más útiles y utilizadas en el trabajo diario con R.

+ Ayuda:
 + `help(topic)`: Ayuda a cerca de la función (*func*) o la aplicación (*package*) explicitada entre paréntesis. El mismo efecto produce la expresión `?topic`. El formato `help()`da acceso a la ayuda general. Con la instrucción `example(func)` se obtiene un ejemplo de la función explicitada. La instrucción `x <- rnorm(1001)` o `x = rnorm(1001)` genera un vector (*muestra*) aleatorio de una distribución normal con 1001 elementos que se almacena en la variable `x`.

	> help(quantile)
	> example(quantile)
	
 + `ls()`: Lista el conjunto de *objetos* (variables, datos, fucniones, etc.) activos en el *espacio de trabajo*.
 + `citation()`: Formato para citar en publicaciones el propio software `R` o los paquetes `citation(package= "pckgname")` que se empleen.

	> citation(package="DBI")
	
+ Leer y escribir datos en local. Debe especificarse la ruta al fichero de datos.
 + `getwd()`: Devuelve el directorio actual de trabajo
 + `setwd()`: Establece el directorio de trabajo. Empleando el 'tabulador' se puede ir completando las rutas disponibles en el directorio de trabajo

	> setwd("/Users/aeserran/Google Drive/")
    
    > getwd()
    
	
 + `read.table()` o `read.csv2()`: Sirve para leer datos de ficheros que estén en el directorio de trabajo.
 + `write.table()` o `write.csv()`: Graba en el directorio de trabajo un fichero con los resultados de la variable especificada entre paréntesis, por ejemplo:

 	> setwd("~/Google Drive/Calculos R/Chernoff/")
 	
 	> fichero=read.csv2("caritas.csv", header=T, sep=";",na.strings= "", strip.white = T, encoding="latin1")
	
	> write.csv2(fichero, "fichero.csv")

+ Datos
 + `c(...)`: Esta es la expresión básica para *combinar* elementos. Es la forma más habitual para presentar datos como vectores. La función `scan()` permite escribir datos desde el teclado.

	> w=c(1, 2, 3, 5, 3)
	> w
	> w=scan()
	> w
	[1] 1 2 3 5 3
 + `data.frame()`: Es la forma más habitual de presentar *tablas de datos* (filas y columnas). Las instrucciones `rbind()` y `cbind()` sirven para añadir filas (*rows*) y columnas (*columns*) respectivamente a un *data frame*. La instrucción `names()` devuleve el nombre de las variables (columnas) de la tabla.

	> d=data.frame(aut=1:5, cits=c(22,1,34,0,12))
	> d
	> d=(cbind(d,inst=c('UAM','UAM','UC3M','UCM','UC3M')))
	> d
	> names(d)
+ Gráficos

	> library(ggplot2)
 	> qplot(d$inst, d$cits, geom='bar', stat='identity', fill=d$inst)+xlab('')+ylab('Citas')

###2.3 Soluciones integradas para los estudios métricos: SQL + R + sqldf

####2.3.1 Conexión entre R y SQLite
Para poder hacer consultas desde **R** en la base de datos que hemos montado en **SQLite**, es necesario disponer
en la interfaz de **RStudio** de las librerías **`DBI`** y **`RSQLIte`**. Para ello, como ya sabemos, se utiliza el comando 
*`library`* para cargar ambas en el sistema. La primera librería establece la conexión de **R** con un sistema de base de datos y la segunda lo hace con el gestor elegido, en nuestro caso **SQLite**.

	======== ORDENES PARA CARGAR LIBRERIAS Y CONECTAR CON LA BASE DE DATOS ============
	> library(DBI)
	> library (RSQLite)
	> driver <- dbDriver("SQLite")
	> mycon <- dbConnect(driver, dbname = "~/Dropbox/Taller/todo.sqlite")
	> dbListTables(mycon)
	====================================================================================

El comando *`dbDriver`* abre la pasarela hacia el sitema de gestión de base de datos **SQLite**, mientras que el comando *`dbConnect`* conecta con la base de datos especificada (en nuestro caso *TodoMED_UAM.sqlite*) en el parámetro *`dbname`*. Es útil nombrar nuestra conexión como una variable, por ejemplo *`mycon`*, para poder utilzarla en otras órdenes como *`dbListTables`* que nos dará un listado de todas las tablas que tenemos en nuestra base de datos.

	> dbListTables(mycon)
	[1] "NUmAutores_SC" "isi_t_cat"     "isi_t_dir"     "isi_t_todo"    "todo_jcr"  

Una vez establecida la conexión con la BD podemos hacer las consultas directamente desde la consola de **R**, utilizando el parámetro *`dbGetQuery`*. Por ejemplo, podemos calcular la producción anual con la siguiente consulta:

	> prod.an <- dbGetQuery(mycon,"SELECT PY,  COUNT(PY) AS Frec FROM isi_t_todo GROUP BY PY")
	> prod.an
        PY Frec
	1 2010 2314
	2 2011 2678
	3 2012 2879
	
O la distribución de registros por revista:

	> prod.rev <- dbGetQuery(mycon,"SELECT SO, COUNT(SO) AS FREC FROM isi_t_todo GROUP BY SO ORDER BY FREC DESC")
	> prod.rev[1:10,]
                                                      SO FREC
	1                     JOURNAL OF HIGH ENERGY PHYSICS  187
	2                                  PHYSICAL REVIEW B  165
	3                            PHYSICAL REVIEW LETTERS  156
	4                                           PLOS ONE  138
	5                                  PHYSICS LETTERS B  132
	6                                  PHYSICAL REVIEW D   92
	7  MONTHLY NOTICES OF THE ROYAL ASTRONOMICAL SOCIETY   88
	8                        EUROPEAN PHYSICAL JOURNAL C   70
	9                            APPLIED PHYSICS LETTERS   67
	10                          ASTRONOMY & ASTROPHYSICS   63

Las distribuciones por tipología documental o idioma:

	> tipol=dbGetQuery(mycon,"SELECT DT,  COUNT(DT) AS Frec FROM isi_t_todo GROUP BY DT")
	> idiom=dbGetQuery(mycon,"SELECT LA,  COUNT(LA) AS Frec FROM isi_t_todo GROUP BY LA")
	
Una consulta algo más compleja permite calcular el número de autores por registro:

	> num.au <- dbGetQuery (mycon, "SELECT UT, PY, LENGTH(AU)-LENGTH(REPLACE( AU, ';', '' ))+1
      AS 'Num_autores' FROM isi_t_todo")

Utilizamos en esta consulta un ardid sencillo: puesto que los autores están separados habitualmente por 'puntos y coma', contamos el número de caracteres, *`LENGTH`*, que hay en el campo (AU) y le restamos el número de 'puntos y coma' que sustituimos con la orden *`REPLACE`*, le sumamos 1 a esta diferencia para contabilizar el último (o único) autor, que no va acompañado por un 'punto y coma'.

Ahora podemos utilizar la variable *`num.au`* para cacular el **índice de coautoria** de la distribución aplicando la función *`mean`*. Es recomendable para una mejor comprensión del resultado, repasar la sintaxis de la función *`tapply`*:

	> n.au=num.au$Num_autores
	> py=as.factor(num.au$PY)
	> ind.coa.anual <- as.data.frame (tapply(n.au,py,mean))
	> ind.coa.anual
    2010       54.03933
	2011       128.95743
	2012       210.47586

Con un sencillo cambio en los parámetros de la función *`tapply`* (sustituyendo *mean* por *median*) podemos calcular la mediana anual del número de autores, una medida más estable (menos influenciada por valores extremos) que el índice de coautoría (media o *mean*)

	> mediana.coa.anual <- as.data.frame (tapply(n.au,py,median))
	> mediana.coa.anual
	2010       5
	2011       5
	2012       6

Por último, una vez terminadas las consultas, es conveniente introducir en la consola de **R** las instrucciones que siguen a continuación para cerrar la conexión con las base de datos.

	> sqliteCloseResult(isi_t_todo)
	> sqliteCloseConnection(mycon)
	> sqliteCloseDriver(driver)

***
####2.3.2 MySQL

De forma muy similar y haciendo uso del paquete *RMySQL*, podríamos gestionar una base de datos integrada en un servidor dedicado con *MySQL*. En este caso se utilizárian los mismos comandos para establecer la conexión y realizar las consultas, con la salvedad de que no estaríamos consultando una base de datos en local, sino a través de un servidor, con lo que hay que establecer en primer lugar la conexión con elservidor a través de su IP.

####2.4 R como sistema de carga de datos y alimentación de las BBDD.

Proceso de carga:

#####Instalamos y cargamos los paquetes que vamos a necesitar

	> install.packages("plyr")
	> install.packages("gdata")
	> install.packages("sqldf")
	> library(plyr)
	> library(gdata)
	> library(sqldf)

#####Indicamos la ruta de los ficheros descargados

	> path <- "/ruta/hasta/txt/" 

#####Obtenemos el listado de ficheros

	> files = list.files(path=path,pattern="*.txt")

#####Juntamos en una linea la ruta y el nombre de cada archivo:

	> archivo<-paste(path, files, sep="")

#####Cargamos todos los archivos en un dataframe que llamaremos WoS.

	> WoS = do.call("rbind", lapply(archivo, function(x) read.delim(x, row.names=NULL, stringsAsFactors=FALSE, quote = "", encoding="UTF-8")))

#####Limpiamos los nombres de la tabla de datos y agregamos un id autonumérico

	> names(WoS) <- names(WoS)[-1]
	> WoS <- WoS[,-ncol(WoS)]
	> WoS$IDU <- seq_len(nrow(WoS))

#####Separar campos

Algunos campos, como los de autor, dirección, categorías temáticas o las referencias bibliográficas, pueden tener más de una ocurrencia dentro de ellos. Cada uno de estos elementos está separado dentro del campo por ";", por lo que es necesario separarlos e instertarlos en un data frame por separado para poder trabajar con ellos.

Ejemplos:

######Autores

	AU_UT <- ddply(WoS,.(IDU),function(x){  
	  au_name <- unlist(strsplit(as.character(x$AU), split="; "))
	  au_fullname <- unlist(strsplit(as.character(x$AF), split="; "))
	  RS <- data.frame(
	    AU = toupper(au_name),
	    AF = toupper(trim(au_fullname)),
	    stringsAsFactors = FALSE
	  )
	  return(RS)
	})

######Direcciones

	c1<-subset(WoS, select = c(IDU,UT,C1), C1 !='')
	C1_UT <- ddply(c1,.(IDU),function(x){
	  z <- gsub(pattern = "(\\[[^:]+\\])",replacement = "", x$C1, perl=TRUE)
	  c1_dir <- unlist(strsplit(as.character(z), split="; "))
	  RS <- data.frame(
	    C1 = toupper(trim(c1_dir)),
	    stringsAsFactors = FALSE
	  )
	  return(RS)
	})

######Categorías temáticas 

	WC_UT <- ddply(WoS,.(IDU),function(x){  
	  wc_name <- unlist(strsplit(as.character(x$WC), split="; "))
	  RS <- data.frame(
	    WC = toupper(trim(wc_name)),
	    stringsAsFactors = FALSE
	  )
	  return(RS)
	})

#####Exportación de los datos a SQL

######A SQLite

	library("DBI")
	library("RSQLite")
	driver<-dbDriver("SQLite")
	mycon<-dbConnect(driver, dbname ="basededatos.db")
	
	dbWriteTable(mycon, "wos", WoS)
	dbWriteTable(mycon, "aut", AU_UT)
	dbWriteTable(mycon, "dir", C1_UT)
	dbWriteTable(mycon, "cat", WC_UT)

######A Excel (CSV)

	write.csv(WoS, file = "wos.csv")

######A otros paquetes estadísticos	(SPSS, SAS o SDATA)

	library(foreign)
	write.foreign(WoS, "wos.txt", "wos.sps",   package="SPSS") 

####2.4.1 Manejo de data frames en R con sqldf

Si decidimos realizar el análisis con R podemos servirnos del paquete 'sqldf' para realizar consultas sobre los data frames y extraer los datos que necesitemos para nuestros análisis.

Ejemplos:

	#Consulta top 10 de autores
	sqldf("select AF, count(IDU) as total FROM AU_UT GROUP BY AF ORDER BY total DESC limit 10")
	
	#Metemos los datos de la consulta en un nuevo data frame
	topautores=sqldf("select AF, count(IDU) as total FROM AU_UT GROUP BY AF ORDER BY total DESC limit 10")
	
	#Utilizamos la libreria 'ggplot2' para hacer un gráfico con ellos
	qplot(topautores$AF, topautores$total, geom='bar', stat='identity', fill=topautores$AF, las=2)+xlab('')+ylab('Publicaciones')+ theme(axis.text.x = element_text(angle = 90, hjust = 1))

###2.3 Bibliotools

> Necesario: 

	Python2
		argparse
		numpy
		matplotlib
		networkx
	Bibliotools 2.2
	registros WoS formato tabulado

	./scripts/parser.py -i data-wos -o data -v
	./scripts/first_distrib.py -i data -v
	./scripts/BC.py -i data -o networks -v
	./scripts/prep_het_graph.py -i data -o networks -v
