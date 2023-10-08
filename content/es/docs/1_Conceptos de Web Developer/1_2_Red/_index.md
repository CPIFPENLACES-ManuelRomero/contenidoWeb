---
title: "La Red"
date: 2023-04-08T18:21:47+02:00
draft: false
weight: 12
icon: fa-solid fa-network-wired
---
## La Red
{{% pageinfo color="primary" %}}
 Para nosotros va a ser el **Medio por el cual transcurre la comunicación entre el emisor (cliente) y el receptor (servidor)**
{{% /pageinfo %}}
La red es algo físico (dispositivos) y también tiene parte lógica (servicios con su  configuracion )
Conviene hacer un repaso sencillo cómo se organiza una red.

La red no es algo monolítico si no para su implementación y gestión se divide en niveles o capas. 

Existe un modelo de referencia OSI de 7 capas, pero la red más utilizada, es la red de internet o red TCP/IP que en su implementación mantiene 4 capas:
{{< imgproc  nivelesTcpIp Fit "500x500 center" >}}

{{</imgproc>}}

Como podemos ver cada capa implementa **protocolos**
{{% pageinfo color="primary" %}}
***Protocolo*** :conjunto de reglas establecidas que permite que dos dispositivos del mismo nivel puede intercambiar mensajes que puede interpretar y gestionar
{{% /pageinfo %}}

{{< imgproc  ProtocoloTcpIpDWES Fit "1200x1000 center" >}}

{{</imgproc>}}
{{% pageinfo color="info" %}}

El proceso de comunicacion empieza creando un mensaje o contenido  en la aplicacion y se envía por la capa física.
Para que dichos datos viajen, tienen un proceso de transformación que conviene conocer, el cual podemos ver en la siguiente imagen
{{% /pageinfo %}}

{{< imgproc Transmision_tcp_ip  Fit "1200x600 center" >}}

{{</imgproc>}}
A continuación vamos a tratar unos puntos que se podrían incluir en el tema de servidor dentre de estos tres elementos, pero también en el apartado de la red
