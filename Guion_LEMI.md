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

##Parte II: La labor del Laboratorio de Estudios Métricos de Información

El Laboratorio de Estudios Métricos de Información (LEMI) [(http://lemi.uc3m.es)][WEBLEMI] es un grupo de investigación reconocido por la Universidad Carlos III de Madrid que está compuesto por profesores, investigadores, doctorandos y personal técnico de apoyo ligados al Departamento de Bilioteconomía y Documentación y a la propia UC3M. El LEMI está reconocido como unidad asociada al Instituto de Filosofía del CCHS-CSIC y la mayoria de sus [miembros][MIEMBROS] pertenecen al [Instituto Interuniversitario de “Investigación Avanzada sobre Evaluación de la Ciencia y la Universidad” (INAECU)][INAECU] en el que participan activamente en su línea de investigación sobre ['Evaluación y Cienciometría'][EVALCIENCIO]. 

![Figura lemi06][lemi06]

Las lineas de trabajo del LEMI se centran en:

1.	El Desarrollo de modelos para evaluar la actividad científica e innovadora ![Figura lemi01][lemi01]

2.	La Investigación en metodologías estadísticas y en el desarrollo de aplicaciones informáticas para la generación de nuevos indicadores. ![Figura lemi04][lemi04] ![Figura lemi05][lemi05] ![Figura lemi03][lemi03]

3.	Consultorías sobre Evaluación de la actividad científica de Intituciones y Organismos de investigación. 

4.	Exploración de métodos Altmétricos para valorar el impacto social de la actividad científica ![Figura lemi02][lemi02]

5.	Estudio y Análisis de los Rankings de universidades

6.	Mantenimiento del Observatorio IUNE ![Figura lemi07][lemi07]

7.	Analisis de la Innovación tecnológica

8. Estudios de género en el ámbito de la actividad científica



[lemi01]:http://danae.uc3m.es/Codiad/workspace/informetria/img/lemi01.jpg
[lemi02]:http://danae.uc3m.es/Codiad/workspace/informetria/img/lemi02.jpg
[lemi03]:http://danae.uc3m.es/Codiad/workspace/informetria/img/lemi03.jpg
[lemi04]:http://danae.uc3m.es/Codiad/workspace/informetria/img/lemi04.jpg
[lemi05]:http://danae.uc3m.es/Codiad/workspace/informetria/img/lemi05.jpg
[lemi06]:http://danae.uc3m.es/Codiad/workspace/informetria/img/lemi06.jpg
[lemi07]:http://danae.uc3m.es/Codiad/workspace/informetria/img/lemi07.jpg

[WEBLEMI]: http://lemi.uc3m.es
[MIEMBROS]: http://lemi.uc3m.es/?q=en/members
[INAECU]: http://www.inaecu.com/
[EVALCIENCIO]: http://www.inaecu.com/lineas-de-investigacion/evaluacion-y-cienciometria/

##Parte III. Herramientas para los estudios métricos de información.

###3.1 Tratamiento masivo de datos

La obtención y tratamiento (filtrado y normalización) de los datos bibliográficos necesitan de sistemas de gestión que permitna administrar la información susceptible de uso bibliométrico. Cuando los datos son de carácter masivo (por encima de unas decenas de miles de registros) se hace imprescindible el uso de gestores de bases de datos. Los mas frecuentes son MySQL y Postgre (que necesitan servidores dedicados). Una solución sencilla y útil en el caso de estudios de dimensión media-alta es SQLite (en particular su versión como plugin de Firefox).

####3.1.1 Gestión de bases de datos en servidores dedicados: MySQL / PostgreSQL / Oracle

Cuando el número de registros es especialmente grande se hace necesario el uso de grandes sistemas de gestión de bases de datos, entre los que cabe destacar Oracle (con licencia propietaria), MySQL y PostgreSQL (ambos con licencias libres).

#####3.1.1.1 Servidores dedicados (LAMP/XAMP/MAMP)

El acrónimo LAMP se refiere a una serie de servicios inux, Apache, MySQL y Perl/PHP/Python) que permiten la creación de un sistema de bases de datos con servidor Web de una forma relativamente rápida y sencilla, dependiendo de nuestros conocimientos informáticos previos.

Inicialmente LAMP se refiere a la instalación en un servidor con sistema operativo Linux del servidor Web Apache (o Apache2), el gestor de bases de datos MySQL y los lenguajes de programación PHP, Perl y/o Python, pero existen variantes de esta instalación para otros sistemas operativos, como Windows (WAMP) o Mac/OSX (MAMP).

En el caso de que contemos con un servidor Linux que cuente con un gestor de paquetes propio (distribuciones basadas en Debian, RedHat, Suse, etc.) la instalación es muy sencilla, mientras que si nuestro terminal cuenta con un sistema opertativo Windows o Mac/OSX puede emplearse un software denominado XAMPP.

> En XAMPP la X se refiere a que puede utilizarse en diferentes sistemas operativos, mientras que el resto de siglas identifican los servicios que se instalarán con el paquete (MySQL, PHP y Perl).

####3.1.2. Nociones de lenguaje SQL (Structured Query Language)
> El lenguaje SQL es un estandar para la gestión y consulta de bases de datos relacionales, que permiten el almacenamiento y tratamiento masivo de datos. En este caso las bases de datos prinicpal y de sus tablas, o en en SQL resultan de gran utilidad para el almacenamiento de los registros bibliográficos así como separar la información contenida en cada campo, normalizarla y extraerla a los paquetes estadísticos u ofimáticos que permitan su tratamiento.

#####3.1.2.1 *Lenguaje de Definición de Datos (DDL)*: 

> Una parte de las sentencias SQL se emplean en la creación `CREATE DATABASE name ` , `CREATE TABLE tablename ` de la base de datos y de sus tablas de datos, o en la inserción de registros `INSERT INTO tablename VALUES ` en esas tablas. En nuestro caso, y debido a que la creación e inserción de registros se hace a partir de la exportación de registros bibliográficos, este tipo de comandos apenas se emplean.

#####3.1.2.2 *Lenguaje de Manipulación de Datos (DML)*:

- SELECT

> Cláusula para seleccionar datos de una o mas tablas de nuestra base de datos. Es la forma mas sencilla de consulta. El resultado es otra tabla que puede almacenarse como una tabla más, en formato de 'vista' (*view*).

![Sintaxis de la claúsula SELECT][sql1]

- ALTER, UPDATE, DELETE

> Son cláusulas para modificar el contenido de tablas. Se puede añadir columnas vacías (ALTER), actualizar datos (UPDATE) o eliminarlos (DELETE)

![Cláusulas de modificación de datos][sql2]

- INNER JOIN

> Las sentencias JOIN sirven para unir (relacionar) datos de varias tablas. Hay varios tipos de relaciones:
INNER JOIN: Selecciona 'solo' los datos que cumplen la condición `ON`. 
LEFT [RIGHT] JOIN: retorna valores de la primera [segunda] tabla (izquierda [derecha]) aunque no cumplan la claúsula `ON`.

![La cláusula INNER JOIN][sql3]

- UPPER, TRIM, etc.

> Hay algunas funciones que permiten cambiar la presentación de los datos.

`UPPER (columna1)`: Convierte a myúsculas todo el contenido de la columna1.

`TRIM()`: Quita los espacios del principio y del final de una cadena de texto.

`CONCAT`: Concatena los valores de dos o mas columnas. En Sqlite se emplea como sintaxis la doble tubería: `||`. En el ejemplo se concatena en una nueva columna de alias 'var' los valores de tres campos: IDU,PROV,PY


     SELECT 
      t_todo.IDU, t_todo.PY, t_prov.PROV, 
      t_todo.IDU || t_prov.PROV || t_todo.PY AS var
     FROM 
      t_todo INNER JOIN t_prov 
     ON 
      t_todo.IDU=t_prov.IDU 
     GROUP BY var


[sql1]: http://danae.uc3m.es/Codiad/workspace/informetria/img/sql1.jpg
[sql2]: http://danae.uc3m.es/Codiad/workspace/informetria/img/sql2.jpg
[sql3]: http://danae.uc3m.es/Codiad/workspace/informetria/img/sql3.jpg


####3.1.3 SQLite

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


###3.2 Software para el análisis estadístico

####3.2.1 El paquete estadístico R

#####3.2.1.1 Primeros pasos

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

##### 3.2.1.2 Comandos básicos en R

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


###3.3 Soluciones integradas para los estudios métricos: SQL + R + `sqldf`

####3.3.1 Conexión entre R y SQLite
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
####3.3.2 MySQL

De forma muy similar y haciendo uso del paquete *RMySQL*, podríamos gestionar una base de datos integrada en un servidor dedicado con *MySQL*. En este caso se utilizárian los mismos comandos para establecer la conexión y realizar las consultas, con la salvedad de que no estaríamos consultando una base de datos en local, sino a través de un servidor, con lo que hay que establecer en primer lugar la conexión con elservidor a través de su IP.

####3.4 R como sistema de carga de datos y alimentación de las BBDD.

Proceso de carga:

[r_isi]: https://github.com/06122010/r_isi

#####Instalamos y cargamos los paquetes que vamos a necesitar

	> install.packages("plyr")
	> install.packages("gdata")
	> install.packages("sqldf")
	> library(plyr)
	> library(gdata)
	> library(sqldf)

#####Funciones automatizadas de carga y normalización de datos WoS

Cargamos las siguientes [funciones desarrolladas por Preiddy Efrain García (2016)][r_isi]:

######Función para elminar espacios sobrantes

	trim = function( x ) {
		gsub("(^[[:space:]]+|[[:space:]]+$)", "", x)
	}

######Función para la carga de ficheros WoS

	isi_cargar = function(x){    
  		a = list.files(path=x,pattern="*.txt")  
  		b=paste(x, a, sep="")  
  		z = do.call("rbind", lapply(b, function(x) read.delim(x,row.names=NULL, stringsAsFactors=FALSE, quote ="", na.strings = "", encoding="UTF-8")))
  		names(z) = names(z)[-1]
  		z = z[,-ncol(z)]
  		z$IDU = seq_len(nrow(z))
  		return(z)  
	}

######Función para separar campos WoS

	isi_separar = function(x,y){
	  if (!require("plyr")) {
	    install.packages("plyr")
	    library(plyr)
	  } 
	  if (y=="C1"){    
	    c1=subset(x, select = c(IDU,UT,C1,PY), C1 !='')
	    ddply(c1,.(IDU,PY),function(y){
	      z = gsub(pattern = "(\\[[^:]+\\])",replacement = "", y$C1, perl=TRUE)
	      c1_dir = unlist(strsplit(as.character(z), split="; "))
	      RS = data.frame(
	        C1 = toupper(trim(c1_dir)),
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
	      RS = data.frame(
	        CR = toupper(trim(cr_name)),
	        stringsAsFactors = FALSE
	      )
	      return(RS)
	    })
	  }
	}
	
######Función para la exportación de la base de dats

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
	  con=dbConnect(drv, dbname ="wos.db")
	  if(y=="WoS"){
	    dbWriteTable(con, "isi_t_todo", x)    
	  }
	  else if(y=="AU"){
	    dbWriteTable(con, "isi_t_au", x)
	  }
	  else if(y=="C1"){
	    dbWriteTable(con, "isi_t_c1", x)
	  }
	  else if(y=="WC"){
	    dbWriteTable(con, "isi_t_wc", x)
	  }
	  else if(y=="SC"){
	  dbWriteTable(con, "isi_t_sc", x)
	  }
	  else if(y=="CR"){
	    dbWriteTable(con, "isi_t_cr", x)
	  }
	  dbDisconnect(con)
	}

#####Indicamos la ruta de los ficheros descargados

	ruta <- "/ruta/hasta/txt/" 

#####Cargamos los registros WoS utilizando la función `isi_cargar()`

	WoS <- isi_cargar(ruta)

#####Separamos los campos con la función `isi_separar()`

Algunos campos, como los de autor, dirección, categorías temáticas o las referencias bibliográficas, pueden tener más de una ocurrencia dentro de ellos. Cada uno de estos elementos está separado dentro del campo por ";", por lo que la función `isi_separar()`necesita separarlos e instertarlos en un data frame por separado para poder trabajar con ellos.

	autores <- isi_separar(WoS,"AU")
	direcciones <- isi_separar(WoS,"C1")
	temas <- isi_separar(WoS,"WC")
	categorias <- isi_separar(WoS,"SC")
	referencias <- isi_separar(WoS,"CR")

En el caso de los campos que contienen valores únicos (año de publicación, revista, etc.), no es necesario separarlos y podemos trabjar con ellos directamente desde el *dataframe original*. Ej:

	table(WoS$PY)
	plot(table(WoS$PY), type='b')
	
	table(WoS$LA)
	pie(table(WoS$LA))

En cuanto a los campos que ha sido necesario separar (autores, direcciones, temas, categorías, referencias, etc.), puesto que los hemos almcacenado en *dataframes* separados, podemos trabajar con ellos sin problema. Ej:

	table(categorias$WC)
	qplot(categorias$WC, fill=categorias$WC, geom='bar', las=2)+ theme(axis.text.x = element_text(angle = 90, hjust = 1), axis.text=element_text(size=8))+coord_flip()+ theme(legend.position="none")

#####Exportación de los datos

######A SQLite

La función `isi_exportar_sqlite()` con los siguientes parámetros, en función de cuáles sean las tablas o datos que queramos exportar,  está diseñada para exportar a una base de datos en formato SQLite tanto los datos fuente, contenidos en el *dataframe* WoS, como los datos separados y que hemos almacenado en otros *dataframes* (autores, direcciones, etc.). Para ello tenemos que ejecutar la función

	isi_exportar_sqlite(WoS,"WOS") 
	isi_exportar_sqlite(autores,"AU")
	isi_exportar_sqlite(direcciones,"C1")
	isi_exportar_sqlite(temas,"WC")
	isi_exportar_sqlite(categorias,"SC")
	isi_exportar_sqlite(referencias,"CR")

> Importante: Por defecto, la función `isi_exportar_sqlite()` exporta las tablas a la base de datos denominada 'wos.db', en la raiz del sistema de fichero. Si quisiéramos modificar el nombre de la base de datos o su ubicación tendríamos que modificar la función, concretamente la línea `con=dbConnect(drv, dbname ="wos.db")`, indicando en el parámetro **dbname** la ruta y el nombre de la base de datos.

######A CSV

	write.csv(WoS, file = "wos.csv")

######A Excel

Existen varios paquetes de R que permiten tanto leer como escribir datos a Excel. Entre los más populares se encuentran `xlsx` y `XLConnect`. En el caso de `xlsx`, exprtar contenido a Excel es tan sencillo como utilizar la función `write.xlsx`, indicando los parámetros *x*, *sheetName* y *file*:

	write.xlsx2(x = WoS, sheetName = 'WOS', file = 'Desktop/test/libro.xlsx')

######A otros paquetes estadísticos	(SPSS, SAS o SDATA)

	library(foreign)
	write.foreign(WoS, "wos.txt", "wos.sps",   package="SPSS") 

####3.4.1 Manejo de data frames en R con sqldf

Si decidimos realizar el análisis con R podemos servirnos del paquete *sqldf* para realizar consultas sobre los data frames y extraer los datos que necesitemos para nuestros análisis.

Ejemplos:

	#Consulta top 10 de autores
	sqldf("select AF, count(IDU) as total FROM autore GROUP BY AF ORDER BY total DESC limit 10")
	
	#Metemos los datos de la consulta en un nuevo dataframe
	topautores=sqldf("select AF, count(IDU) as total FROM autore GROUP BY AF ORDER BY total DESC limit 20")
	
	#Utilizamos la libreria 'ggplot2' para hacer un gráfico con ellos
	qplot(topautores$AF, topautores$total, geom='bar', stat='identity', fill=topautores$AF, las=2)+xlab('')+ylab('Publicaciones')+ theme(axis.text.x = element_text(angle = 90, hjust = 1), legend.position='none')+coord_flip()
###3.5 Consultas SQL de interés bibliométrico

> En este apartado utilzamos los datos importados de la Web of Science, por lo que es necesario estar familiarizado con las etiquetas y el contenido de los campos de un registro típico de esa base de datos.

En *SQLite Manager* podemos utilizar la pestaña `Ejecutar SQL` para interrogar a la base de datos y obtener conteos sencillos sobre autores, títulos de revista, áreas temáticas, etc. mientras que si preferimos trabajar directamente en **R** podemos servirnos del paquete `sqldf` como hemos visto en el apartado anterior.
 
Veamos algunas consultas sencillas.

+ Lista sencilla: autores por registro.

	`SELECT UT, UPPER(AU) FROM isi_t_todo`


Se obtiene una lista con dos columnas `UT` y `AU` que contiene la lista de autores (AU) por registro (UT). Se uiliza la instrucción `UPPER` para visualizar el resultado de forma homogénea (en mayúsculas). La palabra `Autores` ha sido utilizada como un *alias* para nombrar la columna `AU`. El campo `UT` sirve como identificador único de registro que resulta útil como campo clave para establecer relaciones con datos de otras tablas. 

![Autores por registro][con01]

En el menú de `Acciones` podemos exporta el resultado a un archivo separado por comas con extensión `.csv` que puede ser tratado con una hoja de cálculo u otra aplicación. Es este caso, estamos obteniendo datos de un campo con ocurrencias *múltiples* como es el campo AU que contiene por cada registro diversas ocurrencias, una por cada autor que ha firmado el trabajo registrado. Es muy conveniente que este tipo **campos múltiples** (Autores, temáticas, direcciones institucionales, etc.) se traten de forma separada (como se verá más adelante).

+ Conteos simples: distribuciones por año, revista, etc.

`
	SELECT J9 AS Titulo, COUNT (*) AS Freq 
	  FROM isi_t_todo 
	  GROUP BY J9 
	  ORDER BY Freq DESC
`

![Distribución del número de documentos publicados en cada revista fuente][con02]

Esta consulta devuelve dos columnas, el *alias* `Titulo` de las revistas (`J9`) y su frecuencia de aparición (*alias* `Freq`). La instrucción `COUNT (*)` cuenta el número total de filas del campo `J9` (uno de los campos que contiene el título de la fuente de publicación, en este caso en formato abreviado; el campo `SO` contiene el título completo de la fuente). La instrucción `GROUP BY` agrupa los títulos de revista únicos, la insrtucción `ORDER BY .... DESC` muestra los resultados ordenados de forma descendente. 
    
+ Consulta para obtener la distribución anual de documentos:

`
SELECT PY Año, COUNT (*) Freq 
  FROM isi_t_todo 
  GROUP BY PY 
  ORDER BY Año ASC
`

![Producción anual][con03]


+ Consulta para obtener la distribución por tipo de documento:

`
SELECT DT Analisis, COUNT (DT) Freq 
  FROM isi_t_todo 
  GROUP BY DT
  ORDER BY Freq DESC
`

![Tipología documental][con04]


+ Consulta para obtener la distribución del número de documentos según el idioma en el que están escritos:

`
SELECT LA Idioma, COUNT (LA) Freq 
  FROM isi_t_todo 
  GROUP BY Idioma
  ORDER BY Freq DESC
`

> ![Capacidad idiomática][con05]



- Una consulta de consulta: **Preparando la Ley de Bradford**

`
SELECT COUNT(*) NumRev, cnt NumTrabajos 
  FROM 
  (
  SELECT J9, COUNT(*) cnt 
    FROM isi_t_todo 
    GROUP BY J9 
    ORDER BY cnt DESC
  ) 
  GROUP BY NumTrabajos 
  ORDER BY NumRev, NumTrabajos DESC
`

En esta consulta se obtienen igualmente dos columnas con los *alias* `NumRevistas` y `NumTrabajos` (1 revista con 187 trabajos, 1 revista con 165 trabajos, ... 401 revistas con 2 trabajos, 1119 revistas con un solo trabajo). En ella se **combinan** como puede apreciarse _dos consultas `SELECT`_. Con los datos obtenidos y exportados en formato `.csv` resultará fácil comprobar la *ley de Bradford*


![Ley de Bradford: Distribución del número de trabajos - Dispersión de la literatura en sus fuentes de publicación][con06] 

- Una consulta con cálculos: **Preparando el índice de coautoría.**


En las bases de datos bibliográficas los diferentes autores que firman un registro aparecen *habitualmente* separados por el carácter ` ; `. Utilizaremos esta característica para elaborar una consulta que nos permita contar el número de autores por trabajo:

 `SELECT UT, PY, LENGTH(AU)-LENGTH(REPLACE( AU, ';', '' ))+1 AS NumAutores FROM isi\_t\_todo`

Esta consulta devuelve tres columnas, el identificador único de registro `UT`, el año de publicación `PY` para poder elaborar índices anuales y una columna calculada con el *alias* `NumAutores` en la que se visualizará el número de autores de cada registro. Para este cálculo utilizamos la instrucción `LENGTH` que cuenta el número de caracteres, incluidos los espacios, en el campo `AU`; la instrucción `REPLACE` elimina el carácter ` ; ` (o si se quiere, lo reemplaza con *nada*), sumamos `+1` para contabilizar los registros de un autor (y que por tanto, no tienen como separador un ` ; `). El resultado de la consulta, exportado en formato `.csv` podrá ser tratado por una aplicación estadística como *Excel* o *R* (nuestra elección) para calcular promedios (*índice de coautoría*) o medianas de autores por trabajo.


![Número de autores por documento][con07]

> NOTA sobre el resultado obtenido: Sí, no hay equivocación: 2.271 autores en un trabajo. En trabajos de astrofísica, con alguna frecuencia firman los trabajos varios miles de autores. Esto nos hace llamar la atención sobre las carencias del *ìndice de coautoría* que por tratarse de un promedio se ve muy afectado por la existencia de valores extremos. Por otra parte, es necesario recordar que los *índices de caoutoría* cobran  más de sentido si se calculan por *áreas temáticas*, pero para ello es necesaria una consulta que relacione la tabla ccon la que obtenos el número de autores, con otra tabla en la que se asigne a cada registro sus áreas temáticas. 

Las áreas tematicas, como los autores, son campos *bibliográficos múltiples*. Cómo separar sus valores en una tabla diferente se explica más adelante. 


[con01]: http://danae.uc3m.es/Codiad/workspace/informetria/img/con01.jpg
[con02]: http://danae.uc3m.es/Codiad/workspace/informetria/img/con02.jpg
[con03]: http://danae.uc3m.es/Codiad/workspace/informetria/img/con03.jpg
[con04]: http://danae.uc3m.es/Codiad/workspace/informetria/img/con04.jpg
[con05]: http://danae.uc3m.es/Codiad/workspace/informetria/img/con05.jpg
[con06]: http://danae.uc3m.es/Codiad/workspace/informetria/img/con06.jpg
[con07]: http://danae.uc3m.es/Codiad/workspace/informetria/img/con07.jpg


###3.6 Bibliotools

[btools]: http://www.sebastian-grauwin.com/?page_id=427

Bibliotools es una herramienta bibliométrica [desarrollada por Sebastian Grauwin][btools]. Consiste en una biblioteca de scripts en Python cuyo objetivo es transformar un conjunto de registros tabulados, extraídos de la Web of Science, en lo que podríamso denominar como un "mapa de la ciencia", mostrandogran parte de la información relevante de dichos registros (coautoría, colaboración, frentes de investigación, cocitación, etc.) en una sola imagen.

![Ejemplo de Bibliotools][btools1]

[btools1]:http://www.sebastian-grauwin.com/wp-content/uploads/2012/07/chap8fig2.png

Para poder ejecutar Bibliotools es necesario disponer de cierto software y paquetes:

+ Python2: También son necesarios los paquetes `argparse`, `numpy`, `matplotlib`, y `networkx`.
+ Bibliotools: La última versión es la  2.2
+ Registros WoS en formato tabulado (UTF-8): Los registros WoS deben estar descargados en este formato.

Una vez descargados los registros WoS deben almacenarse en la carpeta *data-wos* de Bibliotools y ejecutar los siguentes comandos de Python a través de la terminal:

	./scripts/parser.py -i data-wos -o data -v
	./scripts/first_distrib.py -i data -v
	./scripts/BC.py -i data -o networks -v
	./scripts/prep_het_graph.py -i data -o networks -v
	
Esto generará tanto un documento PDF con las comunidades bibliográficas, como una serie de redes sociales que pueden visualizarse, explorarse y modifcarse por medio de cualquier software especializado en análisis de redes sociales como [Gephi].

[Gephi]: https://gephi.org/

###Materiales de trabajo:

[Funv4]: http://danae.uc3m.es/Codiad/workspace/informetria/ficheros/funciones_v4_redux.R

[Scripts]: http://danae.uc3m.es/Codiad/workspace/informetria/ficheros/TDScript2016.R

[BBDD_prueba]: http://danae.uc3m.es/Codiad/workspace/informetria/ficheros/TDprueba.db

+ [Funciones de Preiddy Efrain García y Carlos García Zorita][Funv4]
+ [Script para la carga y ejecución de las funciones][Scripts]
+ [Base de datos de ejemplo en SQLite][BBDD_prueba]