PROYECTO: AUTOMATIZACIÓN DE PRUEBAS DE API REST PETSTORE

OBJETIVO

Automatizar pruebas de servicios REST de Petstore para validar la creación, consulta, actualización y eliminación de usuarios,
 identificando los datos de entrada, las variables, las validaciones y las respuestas obtenidas.

Documentación de la API:
https://petstore.swagger.io/

URL base del servicio:
https://petstore.swagger.io/v2

HERRAMIENTAS UTILIZADAS

Java JDK 17.

Karate DSL para automatizar pruebas de API REST.

Apache Maven para gestionar dependencias y ejecutar las pruebas.

JUnit 5 para integrar la ejecución de Karate.

Visual Studio Code como editor de código.

REQUISITOS PREVIOS

Antes de ejecutar el proyecto, se debe tener instalado Java 17 y Maven, además de disponer de conexión a internet.

Verificar Java desde una terminal:

java -version

Verificar Maven:

mvn -version

ESTRUCTURA DEL PROYECTO

El proyecto contiene los siguientes elementos:

pom.xml: configuración del proyecto y sus dependencias.

src/test/java/PetstoreTest.java: clase encargada de iniciar las pruebas.

src/test/resources/features/: carpeta con los archivos de pruebas automatizadas.

TC_001_CrearUsuario.feature: prueba de creación de usuario.

TC_002_ConsultarUsuario.feature: preparación y consulta del usuario.

TC_003_ActualizarUsuario.feature: actualización del nombre y correo, seguida de la consulta del usuario actualizado.

TC_004_EliminarUsuario.feature: preparación y eliminación del usuario.

readme.txt: instrucciones de ejecución.

conclusiones.txt: hallazgos y conclusiones del ejercicio.

OPERACIONES SOLICITADAS

Las operaciones del enunciado se cubren de la siguiente manera:

Crear un usuario: TC_001_CrearUsuario.feature.

Buscar el usuario creado: TC_002_ConsultarUsuario.feature.

Actualizar el nombre y el correo: TC_003_ActualizarUsuario.feature.

Buscar el usuario actualizado: consulta GET incluida en TC_003_ActualizarUsuario.feature.

Eliminar el usuario: TC_004_EliminarUsuario.feature.

Algunos escenarios preparan los datos necesarios dentro del mismo archivo para poder ejecutar sus validaciones.

ENTRADAS, VARIABLES Y VALIDACIONES

Las solicitudes utilizan datos de usuario en formato JSON, como identificador, nombre de usuario, nombre, apellido, correo, contraseña, teléfono y estado.

Las pruebas utilizan instrucciones de Karate para definir la URL base, establecer rutas, enviar solicitudes HTTP y validar las respuestas.

Entre las validaciones implementadas se encuentran:

Códigos de respuesta HTTP esperados.

Comparación del nombre de usuario.

Verificación del nombre y el correo actualizados.

Validación de la respuesta de eliminación y de la consulta posterior, según el escenario implementado.

PASOS PARA EJECUTAR EL PROYECTO

Paso 1. Descargar o clonar el repositorio público de GitHub.

Paso 2. Abrir una terminal en la carpeta raíz del proyecto, donde se encuentra pom.xml.

Paso 3. Verificar que Java y Maven estén instalados.

Paso 4. Ejecutar las pruebas con el siguiente comando:

mvn clean test

Paso 5. Esperar a que Maven termine la ejecución.

Paso 6. Revisar en la terminal el resultado de las pruebas y comprobar si existen fallos o errores.

CONSULTA DE REPORTES

Después de ejecutar las pruebas, consultar el reporte resumen de Karate en:

target/karate-reports/karate-summary.html

Abrir el archivo con un navegador para revisar los resultados de la ejecución.

Para entregar evidencias en GitHub, incluir una copia del reporte generado y sus archivos auxiliares necesarios dentro de una carpeta de evidencias o reportes.

RESULTADOS DE REFERENCIA

Durante la ejecución realizada en el desarrollo del ejercicio se reportaron cuatro pruebas con resultado PASS, sin fallos ni errores.

Este resultado corresponde a la ejecución registrada y no garantiza que futuras ejecuciones de la API pública obtengan necesariamente los mismos resultados.

PUBLICACIÓN Y REPRODUCCIÓN

El proyecto debe estar disponible en un repositorio público de GitHub.

Para reproducirlo, el revisor debe descargar el proyecto, verificar los requisitos previos, ejecutar mvn clean test y consultar el reporte generado.