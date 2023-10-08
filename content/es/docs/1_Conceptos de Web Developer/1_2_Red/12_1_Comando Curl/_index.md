---
title: "Curl"
date: 2023-04-08T18:21:47+02:00
draft: false
weight: 2
icon: fa-brands fa-html5

---
### El comando curl
{{< imgproc  curl Fit "500x500 center" >}}


{{</imgproc>}}


{{% pageinfo color="primary" %}}
### :point_right: __Qué es curl__
__Curl__ es una herramienta de línea de comandos utilizada para realizar solicitudes de red desde la terminal de un sistema.

{{% /pageinfo %}}


{{% pageinfo color="primary" %}}
### :star: __Permite__
___
* Interactuar con servicios web y servidores
* Enviar y recibir datos
* Realizar diversas operaciones de red.

{{% /pageinfo %}}

{{% pageinfo color="primary" %}}

### :hammer_and_wrench: __Uso__
___
__Es una herramienta versátil y poderosa.__  
Para los desarrolladores la podemos utilizaz  para determinadas tareas_
* Descargar archivos
* Interactuar con APIs web
* Verificar la conectividad de servidores y servicios en línea.
* Ver cabeceras de la comunicación
* Verificar temas de seguridad

{{% /pageinfo %}}


### Instalación

```bash
sudo apt-get install culr
```

**Usos Básicos de Curl:**
- **Descargar Archivos:** Puedes usar `curl` para descargar archivos desde la web directamente a tu sistema. Por ejemplo, puedes descargar una imagen, un archivo de texto o un recurso web con un simple comando.

  ```bash
  curl -O URL_DEL_ARCHIVO
  ```

- **Consultar Servicios Web:** Curl es útil para realizar solicitudes a servicios web y APIs. Puedes enviar solicitudes HTTP GET para recuperar datos de un servidor web, como información JSON.

  ```bash
  curl URL_DEL_API
  ```

- **Enviar Datos:** Puedes enviar datos a un servidor utilizando `curl`. Esto es útil para realizar solicitudes HTTP POST y enviar información como formularios o cargas útiles JSON.

  ```bash
  curl -X POST -d 'nombre=Juan&apellido=Pérez' URL_DEL_SERVIDOR
  ```

- **Verificar la Conexión:** Curl puede utilizarse para verificar si un servidor o servicio en línea está disponible y responde correctamente.

  ```bash
  curl -I URL_DEL_SERVIDOR
  ```

- **Realizar Pruebas de Red:** Puedes usar `curl` para realizar pruebas de conectividad de red, como verificar si un servidor está ejecutando un servicio en un puerto específico.

  ```bash
  curl -v HOST:PUERTO
  ```

**Importante:** Para utilizar `curl` de manera efectiva, es esencial comprender los conceptos básicos de HTTP y cómo funcionan las solicitudes y respuestas web. Los desarrolladores pueden utilizar `curl` como una herramienta útil para interactuar con servicios web y depurar problemas de red.

### ::books:: Práctica 
{{< alert title="Ahora practica tú" color="success" >}}
* Realiza la instalación de curl en tu sistema
* Prueba a conectarte a un sitio web
* Descarga la página en un fichero llamado pagina.html y luego ábrelo con el navegador
* Mira las cabeceras
  * Verficia la versión del protocolo http
  * Verifica el código que retorna el servidor (prueba con diferentes páginas ...)  * 
* Verifica el puerto por el que el servidor te ha contestao
  {{< /alert >}}
