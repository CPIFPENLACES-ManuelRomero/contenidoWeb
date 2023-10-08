---
title: "Protocolos"
date: 2023-04-08T18:21:47+02:00
draft: false
weight: 1
icon: fa-regular fa-comments

---
## ip
{{< imgproc  ip Fit "500x500 center" >}}

{{</imgproc>}}
Es un protocolo, o mejor dicho  {{<color color="text-success">}}el protocolo  del nivel de red{{</color>}}
{{% pageinfo color="primary" %}}
### :star2: __Protocolo de internet__
___
Dentro de la red de tipo  __TCP/IP__ o red de  __Internet__  
Su función principal es localizar la red donde está el equipo destino  
En su configuración aparece el número IP que es el **identificador único** que tienen un nodo dentro de la red de tipo TCP/IP o red de Internet    
Tenemos IP V4 e IPV6 que es la que actualmente se utiliza, ya que las V4 hace muchos años que se agotaron  
{{% /pageinfo %}}

{{< alert color="primary" title="Acceder a dispositivos" >}}
La IP identifica a un dispositivos de manera única

Para acceder a un dispositivos utilizamos un nombre de dominio a nivel de aplicación usando *http*

**Siempre** Se debe de hacer una traducción de ese nombre de dominia a la ip conrrespondiente. Esto suele ocurrir desde un servicio *DNS* .
{{< /pageinfo >}}

#### Comandos de ip
```shell
ping # Para cominicarme con un hello con un dispositivo
ifconfig # Mostrar la configuración de la tarjeta de red
ip # Un comando sustituo de ifconfig (ver la ayuda con 'man ip') 
tracert # Monitorizar  la traza de rutas de ip's que sigue un paquete seguido para llegar a un dispositivo
route # Permite conocer mis rutas y la ip de mi router más próximo (mi gateway que enruta)
tracert para conocer la traza de rutas o ip's que sigue un paquete en una transmisión
```
#### Ficheros importantes de configuración

```shell
/etc/hosts # Asignación directa ip => dominio
/etc/hostname # Nombre asociado al host
/etc/resolv.conf # Ip del dns para resolver dominios y obtener su ip
```

### El puerto
Este es un concepto muy importante.
{{% pageinfo color="primary" %}}
* En el nivel de transporte tenemos los protocolos UDP y TCP
* Su función principal es localizar/identificar la aplicación a la cual va a ir destinada la comunicación o datos
* Se hace a través de un número que se conoce como el nombre puerto
  * Muchos protocolos a nivel de aplicación tienen asignados puertos reservados, estando estos asignados del 0 al 1023 .
    * Ejemplos

    {{% /pageinfo %}}
  * [información adicional sobre puertos:  https://debianhackers.net/de-puertos-y-firewalls-basico/](https://debianhackers.net/de-puertos-y-firewalls-basico/)
#### Algunos de los principales puertos

| Puerto      | Protocolo   |
|-------------|-------------|
| Nombre      | Descripción |
| 20/tcp      | ftpS-data   |
| 21/tcp      | ftp-control |
| 22/tcp      | ssh         |
| 23/tcp      | telnet      |
| 25/tcp      | smtp        |
| 69/udp      | tftp        |
| __80/tcp__  | __http__    |
| 109/tcp     | pop2        |
| 115/tcp     | sftp        |
| 143/tcp     | imap   |     
| 161/udp     | snmp    |    
| 220/tcp     | imap3    |   
| 389/tcp     | ldap       | 
| __443/tcp__ | __https__   |
| 444/tcp     | snpp|         Protocolo simple de Network Pagging|
| 465/tcp     | smtps       | [[SMTP]] Sobre [[Transport Layer Security|SSL]]. Utilizado para el envío de correo electrónico ([[Correo electrónico]])
| 587/tcp     | smtp        | [[SMTP]] Sobre [[Transport Layer Security|TLS]]
| 993/tcp     | imaps       | [[IMAP]]4 sobre [[Transport Layer Security|SSL]] ([[Correo electrónico]])

### WWW y el Protocolo Http
Los  {{<color color="text-success">}}códigos{{</color>}} http son importantes de conocer
Cuando se solicita un recurso web,  {{<color >}}el servidor {{</color>}}
siempre retorna en la cabecera de la respuesta un   {{<color color="green">}}código{{</color>}}
código

Es importante conocer los códigos que retorna http, se agrupen en 5 grupos:

1. Respuestas informativas (100–199),  
1. Respuestas satisfactorias (200–299),  
1. Redirecciones (300–399),  
1. Errores de los clientes (400–499),  
1. Errores de los servidores (500–599).

{{% pageinfo color="primary" %}}
[:link: __Web con Códigos de estado de respuesta HTTP__
](https://developer.mozilla.org/es/docs/Web/HTTP/Status)

{{% /pageinfo %}}



### La URL o URI
 {{<color color="text-primary">}}
 Especificando el recurso  
 (puede ser una página web con o sin código que ejecutar)   
 que solicitamos al servidor.
 {{</color>}}
{{% pageinfo color="primary" %}}
 ### :information_source: Proceso 
 > * El cliente hace una petición de una página web  
 > * Para ello escribe la URI en el navegador indicando máquina dónde está.  
 > * También nombre de la página que solicita, protocolo usado y puerto por el que realiza la solicitud.  
 > * En la mayoría de las ocasiones se toma el puerto por defecto para ese protocolo
 >> __http 80, https 443___ 
 

 {{% /pageinfo %}}
{{% pageinfo color="primary" %}}
#### :information_source: Agregando datos en la cabecera:__solicitud y fragmento__ 
 > __La solicitud__ son parejas variabla=valor que se pasan en la solicitud  
 > __El fragmento__ representa una parte concreta de la página que se solicita,  
 > Para el fragmento se utiliza el método GET dentro del protocolo http.
{{% /pageinfo %}}

{{% pageinfo color="primary" %}}
 ### :star: Ejemplo de direcciones
___
  __Usando fragmento__
```shell
protcolo://maquina/ruta/recurso/fragmento
http://www.unizar.es/deiss/notas.html#primerCurso
```
__Usando solicitud__
```shell
protcolo://maquina/ruta/recurso/solicitud
http://www.unizar.es/deiss/notas.htmll?nombre="Manuel"&modulo="DWES"
```
__Ejemplo de direcciones__
```shell
Usando el puerto
protcolo://maquina/ruta/recurso:puerto/
http://www.unizar.es:80/
```
{{% /pageinfo %}}

Si se elude alguna parte se toma el valor por defecto o lo que establezca el servidor web
{{< alert title="Importante" color="warning" >}}
__Ver directivas de configuración del servidor web__
Se ubica en el fichero
```shell
/etc/apache2/apache2.conf
/etc/apache2/sites-available/000-default.conf
```
{{< /alert >}}

### :books: Práctica
{{< alert title="Ahora practica tú" color="success" >}}
* En este tema la práctica coniste en que revises los conceptos e investigues en la red temas de protocolos, 
*  Intenta responder a esta pregunta 
  *  Por qué se dice que http es un protocolo sin estado :question:  
  * :question: Por qué se dice que ip es un protocolo no seguro [0_Presentación](..%2F..%2F..%2F0_Presentaci%C3%B3n)
[..](..%2F..)
[2_hugo_](..%2F..%2F..%2F2_hugo_)
[3_ php_](..%2F..%2F..%2F3_%20php_)
[4_laravel_](..%2F..%2F..%2F4_laravel_)[..](..%2F..)
[0_Presentación](..%2F..%2F..%2F0_Presentaci%C3%B3n)
[2_hugo_](..%2F..%2F..%2F2_hugo_)
[3_ php_](..%2F..%2F..%2F3_%20php_)
[4_laravel_](..%2F..%2F..%2F4_laravel_):question:

 {{< /alert >}}