# TALLER DE BIBLIOMETRÍA: El trabajo bibliométrico en la práctica.
Colección de herramientras útiles para el trabajo bibliométrico desarrolladas, en la medida de lo posible, empleando software libre y aplicaciones multiplataforma. 

> Este es un documento disponible para los estudiantes de las asignaturas relacionadas con la docencia que imparten los miembros del **Laboratorio de Estudios Métricos de Información (LEMI)** del Departamento de Biblioteconomía y Documentación de la Universidad Carlos III de Madrid.

***
#LOS ESTUDIOS MÉTRICOS DE INFORMACIÓN

## La Bibliometría de escritorio
> Desde que J.S. Katz y Diana Hicks (1997) propusieran el término Desktop Scientometrics se ha ido consolidando un "concepto" o "filosofía" de trabajo en relación con los estudios (biblio-) métricos que se ha caracterizado por el uso de herramientas informáticas personales (hardware y software) cada vez mas potentes y por la creciente disponibilidad de bases de datos susceptibles de uso bibliométrico.  
En estos [últimos] años se ha llevado a cabo un proceso paralelo en relación con la aparición y desarrollo de aplicaciones de software libre, generalmente disponibles en formato multiplataforma, muy accesibles y suministradas en diversos niveles de implementación que posibilitan su uso por diferentes tipos de usuarios. 
En este sentido, en el ámbito de los estudios métricos de información es habitual el uso de lenguajes de programación como Perl (García González, 2010) o Python (Grauwin y Jensen, 2011), la utilización de gestores de bases de datos como MySQL (Anuradha y Urs, 2007; Han y Sun, 2014), Postgre (Bowman y otros, 2014) o SQlite (Gagolewski, 2011), o los análisis llevados a cabo con aplicaciones como Pajek (Zhang, y otros, 2013), CiteSpace (Chen y otros, 2012) o Gephi (Leydesdorff y Rafols, 2012). Todas estas aplicaciones están disponibles para su uso libre y suponen una nueva forma de entender la investigación [...].

> (Efraín-García & García-Zorita, 2016)
___

###Las tres fases de la metodología bibliométrica: 

+ Obtención - de datos susceptibles de uso bibliométrico
+ Gestión - y tratamiento de los datos, mediante sistemas de gestión de bases de datos y lenguajes de programación.
+ Elaboración - de indicadores bibliométricos mediante el uso de herramientas estadísticas.

![Las tres fases del método bibliométrico][me02]

### Los métodos bibliométricos cuando hay pocos datos.

![La bibliométría 'small' ][me03]

### Los métodos bibliométricos cuando los datos SON 'masivos'.

![La bibliometría 'massive'][me03b]

### Una metodología en el LEMI:
Producto de varias tesis de carácter metodólogico realizadas en el grupo de investigación.

![La metodología del LEMI][me04]

[me01]:http://danae.uc3m.es/Codiad/workspace/informetria/img/meto01.jpg
[me02]:http://danae.uc3m.es/Codiad/workspace/informetria/img/meto02.jpg
[me03]:http://danae.uc3m.es/Codiad/workspace/informetria/img/meto03.jpg
[me03b]:http://danae.uc3m.es/Codiad/workspace/informetria/img/meto03b.jpg
[me04]:http://danae.uc3m.es/Codiad/workspace/informetria/img/meto04.jpg



# PARTE I: Los datos
***

> El objetivo de esta parte es presentar los datos con los que se trabaja en los estudios metricos de información. Se emplean datos procedentes de fuentes primarias o secundarias. En el registro bibliográfico algunos campos son claves en el tratamiento bibliométrico.


## Selección de datos

Se emplean fuentes de información susceptibles de uso bibliométrico. 
La unidad de información la constituye el documento científico (fuentes primarias) y su subrogación (representación) en bases de datos bibiográficas (fuentes secundarias). En algunos análisis se utilizan otras unidades de información, como las patentes (Patentometría) o las páginas Web (Webometría).


### Datos bibliográficos, datos bibliométricos:

![Mapa relacional de las fuentes y datos bibliográficos][me01]

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



### La consulta en bases de datos bibliográficas: obtención de datos de interés bibliométrico

> La mayor parte del trabajo bilométrico se hace usando fuentes biblográficas. De entre las  muchas bases de datos biblográficas susceptibles de uso bibliometrico, destacan dos de carácter multidisciplinar: Web of Science (WoS) y SCOPUS.


#### Web of Science (WoS)

Versión oficial (Thomson-Reuters) extendida de la [Guía de uso] de la Web of Science (2004). También hay disponible una 
[Guía rápida].

#### SCOPUS

Versión oficial de la [Guía SCOPUS] y [Tutoriales] de formación (en inglés)

> En la Web de la _Fundación Española para la Ciencia y la Tecnología (FECYT)_, existen diversos [Materiales de Formación] sobre aspectos variados de la Web of Science (WoS) y SCOPUS.

***

> Junto a estas bases de datos, es frecuente en estudios bibliométricos el empleo de la base de datos *Medine* ..... . Para el estudio del impacto de la investigaciñn se utilizan también bases de datos auxiliares como el JCR (Thomson) o el SJR (ELsevier).....Tambien GS...




[Guía de uso]: http://ip-science.thomsonreuters.com/m/pdfs/wos_workbook_es.pdf
[Guía rápida]: http://wokinfo.com/media/pdf/qrc/wos_qrc_sp.pdf
[Guía SCOPUS]: http://www.americalatina.elsevier.com/sul/es/material_apoio/2014/Guia-do-usuario-Scopus-SPA.pdf
[Tutoriales]: http://help.scopus.com/Content/tutorials/sc_menu.html
[Materiales de Formación]: https://www.recursoscientificos.fecyt.es/servicios/formacion/material





###Campos para la obtención de indicadores bibliométricos: 

> De todos los campos de un registro bibliográfico, solo algunos son susceptibles de uso bibliométrico. Son de especial relevancia aquéllos campos que contienen *múltiples ocurrencias*, es decir, presentan varios sucesos de la misma información. Es el caso de la información referida a autores, direcciones institucionales, materias, keywords, etc.


- **Autores**: La información sobre los autores (nombre y apellidos) resulta útil para recopilar la producción a nivel *micro*.  El principal problema del tratamiento bibliométrico de este campo tiene que ver con la *falta de normalización* del nombre de los autores y con la forma en que éste se presenta en la base de datos. Habitualmente es un *campo múltiple*.

- **Fuente de publicación**: Habitualmente se trata de una revista científica. Este campo presenta el título de la fuente (abreviado o completo, y a veces ambos) que habitalmente está normalizado para toda la base de datos.

- **Dirección institucional**: En la mayoría de las BD bibliográficas se consigna la dirección institucional de todos los autores (La WoS lo hace desde el principio, otras bases de datos lo vienen haciendo desde mediados de los 90's del siglo pasado). Habitualmente es un *campo múltiple*, en el que a su vez, cada una de las *direcciones institucionales* contiene a su vez información múltiple:

>	Patrón: Institución / Departamento y/o Sección / Dir. Geográf. / PAIS
	
>	Ejemplos:
	1. Universidad Carlos III de Madrid, Departamento de Biblioteconomía y Documentación, 28903 Getafe, Madrid, Spain.
	2. Hosp. Gen. Universitario Gregorio Marañon, Laboratorio de Inmunobiología Molecular, E-28007 Madrid, Spain

- **Temática**: En los registros biblográficos se incluye información relativa a la temática de los artículos. Generalmente se incluyen las *keywords* que los autores ponen, pero también se puede añadir la *clasificación temática de la revista* en la que se publican (la WoS incluye dos clasificaciones, una mas agregada -*Subject Categories, SC*- que la otra -*WoS categories, WC*-.). En bases de datos especializadas se suele incluir la clasificación propia de la disciplina (Medline incluye su propio tesauro, *Medical Subject Headings, MeSH*)
- **Otros campos**: En la mayoría de las bases de datos se incluye información sobre el *Idioma de publicación*,  y la *Fecha de publicación* (habitualmente el año). El *Titulo* del trabajo raras veces se utiliza para el tratamiento bibliométrico. Las principlales base de datos de uso bibliométrico, son del tipo *índice de citas* que quiere decir que incluyen información sobre las *referencias* que los trabajos hacen a fuentes anteriores, y el número de *citas* que reciben de trabajos posteriores. 

###Formatos de exportación de datos

- Las bases de datos permiten, en diferente medida, exportar el resultado de las consultas hechas sobre ellas de varias formas. Generalmente se permite exportar directamente los resultados a uno o varios de los gestores bibliográficos más conocidos (*Refworks, EndNote*, etc.) o alguno de los gestores sociales como *Mendeley*. También suelen permitir exportar en alguno de los formatos *legibles* por estos programas (*RIS, BibTex*). Pero los formatos más utilizados en la gestion bibliométrica son los de tipo *texto plano*. Estos formatos exportan los resultados en formato 'separado por comas' *.csv*, o 'separado por tabuladores'. Además en el formato *.txt* se puede exportar el registro *etiquetado*, es decir, se exporta el resultado por campos cada uno de los cuales se iedentifica por la *etiqueta* que le asigna la base de datos.

**Ejemplo de formato separado por tabuladores**:

![Datos separados por tabuladores][fortab]

**Ejemplo de formato etiquetado**:

![Datos etiquetados][foretiq]

- Una cuestión a tener en cuenta es la *codificación de caracteres*, que permite abrir los ficheros importados en diferentes sistemas operativos y en diferentes aplicaciones. El formato recomendo es el UTF-8. De igual modo es recomendable utilizar software libre como *Open Office* o *LibreOffice* para tratar estos ficheros pues no tienen codificación propia como Microsoft, Apple o Windows, IOS.
- En la exportación de datos, los campos múltiples como el relacionado con la autoria de los articulos, los autores se presentan *separados* por un carácter, habitualmente un *punto y coma* (;), lo que facilita la separación de los autores en tablas que pueden incorporarse de forma independiente a la base de datos permitiendo establecer relaciones con otras tablas. 
- De igual modo, las direcciones institucionales de los autores están separadas por un carácter (;). A su vez, dentro de cada ocurrencia la información también es múltiple siguiendo un *patrón* como el que se menciona mas arriba. Salvo el *País* (que suele indicarse en último lugar) el resto de la dirección no suele estar normalizado. Otra cuestión a tener en cuenta es que un mismo autor puede indicar varias instituciones, y aunque lo apropiado es que se cosignen de forma independiente, a veces se hace dentro de una única dirección institucional.

[fortab]: http://danae.uc3m.es/Codiad/workspace/informetria/img/fortab.jpg
[foretiq]: http://danae.uc3m.es/Codiad/workspace/informetria/img/foretiq.jpg

##Obtención y gestión de datos

> El objetivo de este módulo es adquirir las competencias necesarias para construir una base de datos en formato SQL y aprender los rudimentos básicos para su gestión, normalización y consulta.

###Gestores de bases de datos: SQLite
> La instalación de un servidor LAMP es la forma más eficiente y que ofrece mayores funcionalidades para el tratamiento de grandes voluménes de datos, sin embargo, para pequeños volúmenes de datos que no requieren grandes operaciones de cálculo existen opciones de software más livianas y amigables, como por ejemplo SQLite, cuya instalación y manejo aprenderemos en los siguientes epígrafes.

Una solución sencilla que no precisa de operaciones informáticas como l que se descrben en el apartado referido a la `Instalación LAMP` consite en utilizar una *extensión* de *Firefox* que instala el gestor de bases de datos relacionales denominado [SQLite].
Instalarlo es sencillo, basta con que se carge el compelmento correspondiente en el *administrador de complementos*:

![SQlite Manager: Extensión de Firefox][sql01]

El gestor de la base de datos relacional estará disponible en el menu de `Herramientas/Tools` del navegador **Firefox**. Si se *pincha* en dicho complemento, tendremos acceso (esto se puede modificar en las *opciones* de la aplicación) normalmente a la última base de datos creada con todas sus tablas. 

La primera vez que accedamos al gestor será necesario crear una base de datos nueva, dándole el nombre que queramos (la extensión se añadirá por defecto según lo que se establezca en las opciones, normalmente *.db o .sqlite*) cuando nos lo pidan:

![Creación de una base de datos con Sqlite Manage][sql02]

Una vez creada la base de datos, desde el punto de vista del trabajo bibliométrico, no será necesario diseñar las tablas a crear pues la utilidad de este gestor es que permite la importación *directa* de datos:

![Importaciñon de datos en Sqlite Manage][sql03]

Desde bases de datos susceptibles de uso bibliométrico como las de la *Web of Science*. Pulsándo en el icono corespondiente, podremos inportar ficheros de texto en `Formato delimitado por tabulador`

![Formato de exportación en la WoS][sql05]

Una vez activado el `Asistente de Importación` se deberá elegir el fichero de importación desde la pestaña `CSV` (aunque el archivo a importar tenga la extensión por defecto *.txt*), a continuación se introducirá el nombre de la tabal en la que los datos serán importados (por ejemplo, *isi\_t\_todo*), se selecciona como separador de campos la opción `Tab` y se deja el resto de opciones por defecto. Debe prestarse atención a dejar marcada la opción de `La primera línea contiene los nombres de las columnas`. De igual modo, es conveniente que se marque la opción `Ignore Trailing Separator/Delimiters` pues evitará lecturas erróneas de datos

![Asistente de importación en SQlite Manager][sql04]

La aplicación procederá a importar los registros correspondientes y mostrará para que la revisemos la esrtuctura de la tabla.  Los nombres de las columnas se correponderán con las etiquetas de los campos de la base de datos bibliográfica. 

> No será necesario modificar la columna correspondiente al *Tipo de Datos*, salvo excepciones como el año de publicación **PY** que sería conveniente seleccionar el tipo *INTEGER* para considerarlo como campo númerico, de igual modo debe hacerse, por precaución, con otros campos como el número de veces citado **TC** u otros.

![Estructura de datos de la tabla importada][sql06]

> Por otra parte, es frecuente que en el proceso de importación aparezcan errores (registros que no se importan) debido a que contienen caracteres incompatibles con dicho proceso como *comillas simples* (p.ej: O'Connor) o *comillas dobles* u otros símbolos: `&, $, %`. La aplicación mostrará en una ventana emergente el numero de registros con fallos y a qué líneas corresponden. En este caso será necesario utilizar un editor de *texto plano* para localizar los registros erróneos y eliminar estos caracteres.

> Una alternativa de importación que funciona (si el contenido de los campos es inferior a 255 caracteres) es utilizar una Hoja de Cálculo como la de *Libre Office* (recomendable por poseer habitualmente una mejor compatibilidad con la codificación de caracteres UTF-8) o *Microsoft Office*, para pasar los datos a formato `.csv`, en cuyo caso deberá utilizarse como separador de campo el carácter ` ; `.

Una vez completado el proceso de importación (en el caso de la WoS ahbrá que repetir el proceso por cada 500 registros importados) tendremos la tabla (*isi\_t\_todo*) con todos los registros importados listos para hacer sobre ellos las `CONSULTAS` necesarias.

![Vista de la tabla de datos importada][sql07]

[sql01]: http://danae.uc3m.es/Codiad/workspace/informetria/img/Sqlite01.jpg
[sql02]: http://danae.uc3m.es/Codiad/workspace/informetria/img/Sqlite02.jpg
[sql03]: http://danae.uc3m.es/Codiad/workspace/informetria/img/Sqlite03.jpg
[sql05]: http://danae.uc3m.es/Codiad/workspace/informetria/img/Sqlite05.jpg
[sql04]: http://danae.uc3m.es/Codiad/workspace/informetria/img/Sqlite04.jpg
[sql06]: http://danae.uc3m.es/Codiad/workspace/informetria/img/Sqlite06.jpg
[sql07]: http://danae.uc3m.es/Codiad/workspace/informetria/img/Sqlite07.jpg

[SQLite]: http://www.sqlite.org/

###Instalación LAMP

> Este módulo del manual requiere de mayores conocimientos informa áticos que los habituales de un usuario normal, por ello puede saltarse sin renunncia deener resulta objetitivo final. Si se es unn usuario avanzado (o unno atrevido) la instalación de LAMP permitirá la gestión de de un volumen muy alto de datos bibliométricos de una forma eficaz.

El acrónimo LAMP se refiere a una serie de servicios Linux, Apache, MySQL y Perl/PHP/Python) que permiten la creación de un sistema de bases de datos con servidor Web de una forma relativamente rápida y sencilla, dependiendo de nuestros conocimientos informáticos previos.

Inicialmente LAMP se refiere a la instalación en un servidor con sistema operativo Linux del servidor Web Apache (o Apache2), el gestor de bases de datos MySQL y los lenguajes de programación PHP, Perl y/o Python, pero existen variantes de esta instalación para otros sistemas operativos, como Windows (WAMP) o Mac/OSX (MAMP).

En el caso de que contemos con un servidor Linux que cuente con un gestor de paquetes propio (distribuciones basadas en Debian, RedHat, Suse, etc.) la instalación es muy sencilla y se detalla en el punto 2.2.1, mientras que si nuestro terminal cuenta con un sistema opertativo Windows o Mac/OSX puede emplearse un software denominado XAMPP, cuya instalación se explica en el punto 2.2.2.

> En XAMPP la X se refiere a que puede utilizarse en diferentes sistemas operativos, mientras que el resto de siglas identifican los servicios que se instalarán con el paquete (MySQL, PHP y Perl).

####Instalación de LAMP

Debido al gran número de distribuciones Linux disponibles no vamos a detallar el proceso de instalación para todas ellas, sino que nos centraremos en Ubuntu, por tratarse de la distribución más extendida a nivel usuario y porque, al tratarse de una distribución basada en Debian, estos pasos de instalación seon válidos para un gran número de distribuciones basadas también en Debian.

En primer lugar, debemos acceder a la terminal del sistema y familiarizarnos con ella, puesto que será un elemento muy útil para la gestión tanto del sistema como de los servicios que permiten constituirlo en servidor Web y de bases de datos.

Una vez en la terminal vamos a utilizar el siguiente comando, que instalará el gestor de paquetes `tasksel`, que nos permitirá instalar LAMP en muy pocos pasos:

`sudo apt-get install tasksel`

En este caso empleamos el comando `sudo`, que nos permite ejecutar el código como `super usuario` y por tanto contamos con privilegios para la instalación y gestión de paquetes del sistema operativo. A continuación ejecutamos `tasksel`, de nuevo con el comando `sudo`, dado que vamos a instalar nuevos paquetes:

`sudo tasksel`

Con lo que obtendremos la siguiente ventana:

![Figura 1][lamp1]

Una vez en `tasksel` podemos elegir entre diferentes opciones que instalar en el sistema unos paquetes u otros en función del uso que queramos darle al mismo. En nustro caso vamos a escoger la opción `LAMP server`, que instalará los paquetes necesarios para nuestro servidor LAMP.

Durante el proceso de instalación que acaba de comenzar se nos solicitará nuestra intervención en algunas cuestiones, como por ejemplo el establecimiento de la contraseña de administrador de la base de datos (MySQL):

![Figura 2][lamp2]

Es recomendable establecer esta contraseña, que se trate de una contraseña seguro y que podamos recordar sin problema, pues haremos un uso intensivo de ella.

Una vez que el proceso de instalación haya terminado, podemos comprobar si el servidor Web funciona correctamente accediendo a la IP interna de la máquina: `127.0.0.1` o `localhost`, obteniendo un resultado parecido al de la siguiente imagen:

![Figura 3][lamp3]

Esto indica que el servidor Web (Apache) está funcionando adecuadamente, con lo que el siguiente paso será la instalación de un administrador de bases de datos que nos permita gestionar fácilmente MySQL. Existen muchos gestores, pero el más popular es `phpmyadmin`, que hace uso de `apache` y del lenguaje de programación `PHP`. Su instalación es muy sencilla, solo tenemos que ejecutar en la terminal el siguiente comando:

`sudo apt-get install phpmyadmin`

Este comando instalar la versión más reciente de `phpmyadmin`, que nos preguntará a continuación cuál es el servidor Web que tenemos instalado en nuestra máquina, a lo que responderemos que `apache`.

![Figura 4][lamp4]

Nos preguntará también si queremos que `phpmyadmin` se configure de forma automática o manualmente. Si tenemos experiencia en sistemas UNIX podemos optar por la configuración manual, pero en caso contrario será recomendable utilizar la configuración automática.

![Figura 5][lamp5]

También nos solicitará la contraseña de MySQL para acceder a las bases de datos, así que intrudicimos la misma contraseña que utilizamos durante la instalación del sistema LAMP.

Una vez terminado el proceso, solo tenemos que acceder a la utl `127.0.0.1/phpmyadmin/`, que nos solicitará usuario y contraseña de la base de datos. De momento solo tenemos un usuario `root` y la contraseña de administración que utilizamos previamente, así que introducimos estos datos y obtenemos acceso a `phpmyadmin`, que nos permitirá gestionar MySQL de una manera gráfica y muy sencilla:

![Figura 6][lamp6]

[lamp1]: http://danae.uc3m.es/Codiad/workspace/informetria/img/lamp01.jpg
[lamp2]: http://danae.uc3m.es/Codiad/workspace/informetria/img/lamp03.jpg
[lamp3]: http://danae.uc3m.es/Codiad/workspace/informetria/img/lamp04.jpg
[lamp4]: http://danae.uc3m.es/Codiad/workspace/informetria/img/lamp06.jpg
[lamp5]: http://danae.uc3m.es/Codiad/workspace/informetria/img/lamp07.jpg
[lamp6]: http://danae.uc3m.es/Codiad/workspace/informetria/img/lamp10.jpg

####Instalación de XAMPP

En el caso de que queramos realizar una instalación sencilla de los servicios (L/W/M)AMP, podemos optar por una solución de software denominada XAMPP, que instalará a través de un sólo paquete de software el servidor de bases de datos `apache`, `MySQL` como sistema de gestión de bases de datos y los legnuajes de programación `Perl` y `PHP`.

Para su instalación tan solo es necesario descargarnos [el paquete de su página Web][XAMPP] y seguir las instrucciones de instalación, que tienen un caracter muy intuitivo.

[XAMPP]: http://www.apachefriends.org/

###Nociones de lenguaje SQL (Structured Query Language)
> El lenguaje SQL es un estandar para la gestión y consulta de bases de datos relacionales, que permiten el almacenamiento y tratamiento masivo de datos. En este caso las bases de datos prinicpal y de sus tablas, o en en SQL resultan de gran utilidad para el almacenamiento de los registros bibliográficos así como separar la información contenida en cada campo, normalizarla y extraerla a los paquetes estadísticos u ofimáticos que permitan su tratamiento.

> *Lenguaje de Definición de Datos (DDL)*: Una parte de las sentencias SQL se emplean en la creación `CREATE DATABASE name ` , `CREATE TABLE tablename ` de la base de datos y de sus tablas de datos, o en la inserción de registros `INSERT INTO tablename VALUES ` en esas tablas. En nuestro caso, y debido a que la creación e inserción de registros se hace a partir de la exportación de registros bibliográficos, este tipo de comandos apenas se emplean.

####Lenguaje de Manipulación de Datos (DML):

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
[sql3]: http://danae.uc3m.es/Codiad/workspace/informetria/img/sql2.jpg
[sql2]: http://danae.uc3m.es/Codiad/workspace/informetria/img/sql3.jpg

###Consultas SQL de interés bibliométrico

> En este apartado utilzamos los datos importados de la Web of Science, por lo que es necesario estar familiarizado con las etiquetas y el contenido de los campos de un registro típico de esa base de datos.

En *SQLite Manager* podemos utilizar la pestaña `Ejecutar SQL` para interrogar a la base de datos y obtener conteos sencillos sobre autores, títulos de revista, áreas temáticas, etc. Veamos algunas consultas sencillas.

- Lista sencillas: autores por registro.

> SELECT UT, UPPER(AU) FROM isi\_t\_todo

Se obtiene una lista con dos columnas `UT` y `AU` que contiene la lista de autores (AU) por registro (UT). Se uiliza la instrucción `UPPER` para visualizar el resultado de forma homogénea (en mayúsculas). La palabra `Autores` ha sido utilizada como un *alias* para nombrar la columna `AU`. El campo `UT` sirve como identificador único de registro que resulta útil como campo clave para establecer relaciones con datos de otras tablas. 

![Figura con01][con01]

En el menú de `Acciones` podemos exporta el resultado a un archivo separado por comas con extensión `.csv` que puede ser tratado con una hoja de cálculo u otra aplicación. Es este caso, estamos obteniendo datos de un campo con ocurrencias *múltiples* como es el campo AU que contiene por cada registro diversas ocurrencias, una por cada autor que ha firmado el trabajo registrado. Es muy conveniente que este tipo **campos múltiples** (Autores, temáticas, direcciones institucionales, etc.) se traten de forma separada (como se verá más adelante).

- Conteos simples: distribuciones por año, revista, etc.

> SELECT J9 AS Titulo, COUNT (*) AS Freq FROM isi\_t\_todo GROUP BY J9 ORDER BY Freq DESC

Esta consulta devuelve dos columnas, el *alias* `Titulo` de las revistas (`J9`) y su frecuencia de aparición (*alias* `Freq`). La instrucción `COUNT (*)` cuenta el número total de filas del campo `J9` (uno de los campos que contiene el título de la fuente de publicación, en este caso en formato abreviado; el campo `SO` contiene el título completo de la fuente). La instrucción `GROUP BY` agrupa los títulos de revista únicos, la insrtucción `ORDER BY .... DESC` muestra los resultados ordenados de forma descendente. 

![Figura con02][con02]

Distribución anual de documentos:

> SELECT PY Año, COUNT (*) Freq FROM isi_t_todo GROUP BY PY ORDER BY Año ASC

![Figura con03][con03]

Tipología documental:

![Figura con04][con04]

Capacidad idiomática:

![Figura con05][con05]

- Una consulta de consulta: Preparando la Ley de Bradford 

> SELECT COUNT(*) NumRev, cnt NumTrabajos FROM (SELECT J9, COUNT(*) cnt FROM isi\_t\_todo GROUP BY J9 ORDER BY cnt DESC) GROUP BY NumTrabajos ORDER BY NumRev, NumTrabajos DESC

En esta consulta se obtienen igualmente dos columnas con los *alias* `NumRevistas` y `NumTrabajos` (1 revista con 187 trabajos, 1 revista con 165 trabajos, ... 401 revistas con 2 trabajos, 1119 revistas con un solo trabajo). En ella se combinan como puede apreciarse dos conslutas `SELECT`. Con los datos obtenidos y exportados en formato `.csv` resultará fácil comprobar la *ley de Bradford*

![Figura con06][con06]

- Una consulta con cálculos: Preparando el índice de coautoría.

En las bases de datos bibliográficas los diferentes autores que firman un registro aparecen *habitualmente* separados por el carácter ` ; `. Utilizaremos esta característica para elaborar una consulta que nos permita contar el número de autores por trabajo:

> SELECT UT, PY, LENGTH(AU)-LENGTH(REPLACE( AU, ';', '' ))+1 AS NumAutores FROM isi\_t\_todo

Esta consulta devuelve tres columnas, el identificador único de registro `UT`, el año de publicación `PY` para poder elaborar índices anuales y una columna calculada con el *alias* `NumAutores` en la que se visualizará el número de autores de cada registro. Para este cálculo utilizamos la instrucción `LENGTH` que cuenta el número de caracteres, incluidos los espacios, en el campo `AU`; la instrucción `REPLACE` elimina el carácter ` ; ` (o si se quiere lo reemplaza con *nada*), sumamos `+1` para contabilizar los registros de un autor (y que por tanto, no tienen como separador un ` ; `). El resultado de la consulta, exportado en formato `.csv` podrá ser tratado por una aplicación estadística como *Excel* o *R* (nuestra elección) para calcular promedios (*índice de coautoría*) o medianas de autores por trabajo.

![Figura con07][con07]

> NOTA: Sí, no hay equivocación: 2271 autores en un trabajo. En trabajos de astrofísica, con alguna frecuencia firman los trabajos varios miles de autores. Esto nos hace llamar la atención sobre las carencias del *ìndice de coautoría* que por tratarse de un promedio se ve muy afectado por la existencia de valores extremos. Por otra parte, es necesario recordar que los *índices de caoutoría* cobran  más de sentido si se calculan por *áreas temáticas*, pero para ello es necesaria una consulta que relacione la tabla ccon la que obtenos el número de autores, con otra tabla en la que se asigne a cada registro sus áreas temáticas. 

> Las áreas tematicas, como los autores, son campos *bibliográficos múltiples*. Cómo separar sus valores en una tabla diferente se explica un poco más adelante.  


[con01]: http://danae.uc3m.es/Codiad/workspace/informetria/img/con01.jpg
[con02]: http://danae.uc3m.es/Codiad/workspace/informetria/img/con02.jpg
[con03]: http://danae.uc3m.es/Codiad/workspace/informetria/img/con03.jpg
[con04]: http://danae.uc3m.es/Codiad/workspace/informetria/img/con04.jpg
[con05]: http://danae.uc3m.es/Codiad/workspace/informetria/img/con05.jpg
[con06]: http://danae.uc3m.es/Codiad/workspace/informetria/img/con06.jpg
[con07]: http://danae.uc3m.es/Codiad/workspace/informetria/img/con07.jpg


# PARTE II: OBTENCIÓN DE INDICADORES

***



##Tratamiento de datos

***

###Paquetes estadísticos: Excel y R

***

###Primeros pasos en R


####Instalación de R y Entornos de Trabajo Integrado

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
[DATOS-R]: http://www.youtube.com/watch?v=uK31EnqbHHQ	

Habitualmente el trabajo en R se hace desde la línea de comandos de su *consola*. Esto, en nuestra opinión es lo más práctico y a lo que al final uno se acaba acostumbrando. La utiliación de *scripts* en texto plano con las instrucciones y comandos que deben ejecutarse en *modo consola* facilitan la tarea y hace que no se eche de menos una *interfaz gráfica*.
Sin embargo, y debido a la filosofía de trabajo colaborativo que hay tras el *proyecto-R*, se han desarrollado *interfaces gráficas* que se asemejan a las de otros programas estadísticos como SPSS. Entre las interfaces más utilizadas está el *`package`* `RCommander` de fácil instalación y uso. Una buena guía sobre este paquete se puede encontrar en los cursos de formación del Consorcio gallego (CIXUG):

+ FORMACIÓN CIXUG (Acceso como invitado, en *galego y castellano*): [Análise estadística con RCommander (CIXUG)][RCOMM]

[RCOMM]: http://cursos.cixug.es/course/view.php?id=22&lang=es_es

Por otra parte, se han desarrollado por la comunidad de voluntarios que da soporte a **R**, un conjunto de *Entornos Integrados de Trabajo* (IDE, por sus siglas en inglés), que proporcionan una vía intermedia, que a nosotros nos resulta muy útil, entre la *consola* original de **R** y los *entornos gráficos* como **RCommander**. Nuestro IDE favorito es **RStudio**, que también está disponible gratuitamente. 

DESARROLLAR ESTA PARTE CON PANTALLAZOS ETC.


Par finalizar, aquí hay un par de recursos útiles sobre **R**:

+ Quick-R: [Manual en línea de R, en inglés][QUICK]
+ Short Reference Card: Un resumen de las principales [Funciones de R (en inglés también)][SHORT]
+ Faltaría uno en castellano....

[QUICK]: http://www.statmethods.net/index.html
[SHORT]: http://cran.r-project.org/doc/contrib/Short-refcard.pdf


####Comandos básicos en R

Aquí porponemos una lista de comandos y funciones que están entre las más útiles y utilizadas en el trabajo diario con R.

+ Ayuda:
 + `help(topic)`: Ayuda a cerca de la función (*func*) o la aplicación (*package*) explicitada entre paréntesis. El mismo efecto produce la expresión `?topic`. El formato `help()`da acceso a la ayuda general. Con la instrucción `example(func)` se obtiene un ejemplo de la función explicitada. La instrucción `x <- rnorm(1001)` o `x = rnorm(1001)` genera un vector (*muestra*) aleatorio de una distribución normal con 1001 elementos que se almacena en la variable `x`.

	> help(quantile)
	> example(quantile)
	quantl> quantile(x <- rnorm(1001)) # Extremes & Quartiles by default
	         0%         25%         50%         75%        100% 
	-2.76751115 -0.68383921 -0.01418894  0.67616251  3.56978403 
	
 + `ls()`: Lista el conjunto de *objetos* (variables, datos, fucniones, etc.) activos en el *espacio de trabajo*.
 + `citation()`: Formato para citar en publicaciones el propio software `R` o los paquetes `citation(package= "pckgname")` que se empleen.

	> citation(package="DBI")
	To cite package ‘DBI’ in publications use:
	R Special Interest Group on Databases (2013). DBI: R Database Interface. R package version 0.2-7.  http://CRAN.R-project.org/package=DBI
	A BibTeX entry for LaTeX users is
	 @Manual{,
	 title = {DBI: R Database Interface},
	 author = {R Special Interest Group on Databases},
	 year = {2013},
	 note = {R package version 0.2-7},
	 url = {http://CRAN.R-project.org/package=DBI},
	  }
	
+ Leer y escribir datos en local. Debe especificarse la ruta al fichero de datos.
 + `getwd()`: Devuelve el directorio actual de trabajoooo
 + `setwd()`: Establece el directorio de trabajo. Empleando el 'tabulador' se puede ir completando las rutas disponibles en el directorio de trabajo

	> setwd("/Users/czorita/Google Drive/")
    > getwd()
    [1] "/Users/czorita/Google Drive"
	
 + `read.table()` o `read.csv2()`: Sirve para leer datos de ficheros que estén en el directorio de trabajo.
 + `write.table()` o `write.csv()`: Graba en el directorio de trabajo un fichero con los resultados de la variable especificada entre paréntesis, por ejemplo:

 	> setwd("~/Google Drive/Calculos R/Chernoff/")
 	> fichero=read.csv2("caritas.csv", header=T, sep=";",na.strings= "", strip.white = T, encoding="latin1")
	> wirte.csv2(fichero, "fichero.csv")
	

+ Datos
 + `c(...)`: Esta es la expresión básica para *combinar* elementos. Es la forma más habitual para presentar datos como vectores. La función `scan()` permite escribir datos desde el teclado.

	> w=c(1, 2, 3, 5, 3)
	> w
	[1] 1 2 3 5 3
	> w=scan()
	1: 1
	2: 2
	3: 3
	4: 5
	5: 3
	6: 
	Read 5 items
	> w
	[1] 1 2 3 5 3
 
 + `data.frame()`: Es la forma más habitual de presentar *tablas de datos* (filas y columnas). Las instrucciones `rbind()` y `cbind()` sirven para añadir filas (*rows*) y columnas (*columns*) respectivamente a un *data frame*. La instrucción `names()` devuleve el nombre de las variables (columnas) de la tabla.

	> d=data.frame(aut=1:5, cits=c(22,1,34,0,12))
	> d
	  aut cits
	1   1   22
	2   2    1
	3   3   34
	4   4    0
	5   5   12
	> d=(cbind(d,inst=c('UAM','UAM','UC3M','UCM','UC3M')))
	> d
	      aut cits inst
	1   1   22  UAM
	2   2    1  UAM
	3   3   34 UC3M
	4   4    0  UCM
	5   5   12 UC3M
	> names(d)
	[1] "aut"  "cits" "inst"



 + `x[...]`: wwwww wwww wwww 
 
```
> prod.an[ ]
PY Frec
1 2009  722
2 2010  726
3 2011  760
4 2012  731
5 2013  731
> prod.an[,2]
[1] 722 726 760 731 731
> prod.an[2,]
   PY Frec
2 2010  726
> prod.an[2,2]
[1] 726
> prod.an[1:3,]
  PY Frec
	1 2009  722
	2 2010  726
	3 2011  760
```


+ Gráficos
 + `plot()`
 + `hist()`, `barplot()`, `boxplot()`, ....




###Conexión entre R y SQLite

***

Para poder hacer consultas desde **R** en la base de datos que hemos montado en **SQLite**, es necesario disponer
en la interfaz de **RStudio** de las librerías **`DBI`** y **`RSQLIte`**. Para ello, como ya sabemos, se utiliza el comando 
*`library`* para cargar ambas en el sistema. La primera librería establece la conexión de **R** con un sistema de base de datos y la segunda lo hace con el gestor elegido, en nuestro caso **SQLite**.

	======== ORDENES PARA CARGAR LIBRERIAS Y CONECTAR CON LA BASE DE DATOS ============
	> library(DBI)
	> library (RSQLite)
	> driver <- dbDriver("SQLite")
	> mycon <- dbConnect(driver, dbname = "~/Dropbox/Taller/TodoMED/TodoMED_UAM.sqlite")
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
> #### R y MySQL
> Podríamos poner algo del uso de MySql con R, ya que hemos hablado de ello en el apartado de LAMP. Si no da para un epígrafe largo pondremos un 'bloque' con algunas instrucciones mínimas.

##Cálculo de indicadores

***

###Obtención de indicadores unidimensionales
####Distribuciones
####Algunas regularidades: Ley de Bradford

***

###Indicadores relacionales: Análisis de redes sociales (ARS).

***

En la bibliometría reciente es habitual el empleo de indicadores basados en la relación entre entidades co-ocurrentes, como los autores que firman un trabajo o las temáticas a las que se le asignan. Estos indicadores están basados en el empleo de las técnicas del análisis de redes sociales que fundamentalmente producen outputs gráficos (‘*grafos*’) que con frecuencia se denominan impropiamente ‘*mapas*’, pues como se acaba de decir no es la posición lo que los define, sino la relación entre las entidades que se representan.

Si hemos tenido la precaución de separar el contenido de un campo bibliográfico 'múltiple' como el campo autor o como el campo relativo a la clasificación temática de los registros (**WC** y/o **SC** en WoS), podemos extraer una tabla con todos los pares posibles de co-ocurrencia entre términos (o entre autores o paises o instituciones).

Supongamos que, como se ha descrito en el apartado 2.3.x, en una tabla denominada *isi\_t\_cat*  hemos separado por registro las distintas categorías temáticas (**SC**). Si utililzamos la siguiente consulta SQL:

	[1] SELECT a.SC as Source, b.SC as Target, 'Undirected' AS Type FROM isi_t_cat a, isi_t_cat b where a.ut=b.ut and a.SC < b.SC

obtendremos los pares necesarios para poder realizar el *grafo* de la red de relaciones, en la que los *nodos* los constituyen las distintas categorías temáticas y los *enlaces* o *arcos* representan la relación de co-ocurrencia de dos categorías temáticas en un mismo registro bibliográfico. La consulta la podemos guardar en formato *'.csv'* para su posterior utilización.

![Figura g001][id1]

[id1]: http://danae.uc3m.es/Codiad/workspace/informetria/img/Fig_001.png "Figura xxx"

**Figura XXX: SQLite: Pares de co-ocurrencias del campo Subject Categories (SC)**

En la sentencia [1] presentamos el contenido del campo SC en dos columnas, de modo que para el mismo registro *`a.UT=b.UT`* se obtienen todos los pares posibles de términos concurrentes de un mismo registro. Con la claúsula *`a.SC < b.SC`* se consigue mostrar solo pares sin repetición (T1-T2 = T2-T1) ,es decir, la relación -la red- es no dirigidda (*Type=Undirected)

		1   1   22
		2   2    1
		5   5   12
		1   1   22  UAM
		5   5   12 UC3M
		> names(d)
		[1] "aut"  "cits" "inst"


 + `x[...]`: 
 *). La primera columna de la tabla se refiere a los nodos 'origen' (*Source*) mientras que la segunda lo hace a los nodos 'destino' (*Target*).


####Visualización de datos reticulares: Gephi
 
***
NOCIONES BÁSICS ADE GEPHI  Y OTROS PROGRAMAS DE ARS

####Uso de Gephi

Con la metodología que aquí proponemos y utilizando plataformas ‘*open source*’ de generación y visualización de grafos como **Gephi** (<http://gephi.github.io/>), podemos preparar de un modo sencillo algunos indicadores bibliométtricos de tipo relacional. Para ello será necesario que los pares de co-ocurrencias obtenidos mediante consultas SQL, como se ha explicado en el apartado anterior, se almacenen en un fichero tipo *`.csv`*.

![Figura g002][id2]

[id2]: http://danae.uc3m.es/Codiad/workspace/informetria/img/Fig_003.png "Figura xxx"
**Figura XXX: SQLite: Exportación a fichero CSV**

En este fichero las dos primeras columnas son los pares de relaciones, que deben nombrarse, como ya se dijo más arriba, *“Source”* y *“Target”*, mientras que la tercera columna deberá nombrarse *“Type”*, y contendrá el término *‘undirected’* si la red es no dirigida o *‘directed’* en caso contrario. 

Solo falta abrir un *‘proyecto nuevo’* en Gephi e importar la hoja de datos `.csv` como *‘hoja de aristas’* desde el *“Laboratorio de datos”*. Los *nodos* se generan automáticamente y solo hay que copiar (`Copiar datos a atra columna`) la columna *“Id”* en la columna *“Label”*. 

![Figura g003][id3]

[id3]: http://danae.uc3m.es/Codiad/workspace/informetria/img/Fig_004.png "Figura xxx"
**Figura XXX: Gephi: Laboratorio de datos, Importación  de Hoja de cálculo**

A continuación podemos proceder a llevar a cabo los análisis de redes sociales que deseemos, utilizando los parámetros adecuados: particiones, filtros, algoritmos de poda, etc.

![Figura 004][id4]

[id4]: http://danae.uc3m.es/Codiad/workspace/informetria/img/Fig_004.png "Figura xxx"
**Figura XXX: Gephi: Ejemplo de Grafo de ARS**

**RECOMENDAR ALGÚN MANUAL DE GEPHI**

# PARTE III: BIBLIOTECA DE SCRIPTS DE USO BIBLIOMÉTRICO
## Progamación con Javascript
###Separador de campos múltiples
## Scripts en R
###Funciones en R