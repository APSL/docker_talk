
# Docker
## APSL

bcabezas@apsl.net

[http://talks.apsl.net/docker](http://talks.apsl.net/docker)  [(or github)](https://github.com/APSL/docker_talk)


.fx: titleslide

---

# Agenda

* Qué es?
* El problema
* la revolución de los containers
* Ventajas principales
* Arquitectura
* El ciclo de vida Docker
* El ecosistema

---
# ¿Qué es Docker?

<img src='img/container.jpg' />

"Docker es un proyecto de software libre para crear fácilmente containers 
ligeros, portables y auto-suficientes de cualquier **aplicación**"

---

# El problema

Desplegar aplicaciones en los servidores es demasiado complicado

---
# El problema

Desplegar aplicaciones en los servidores es demasiado complicado

<img src='img/the-challenge.png' />

---

# The Matrix From Hell

<img src='img/the-matrix-from-hell.png' />

---

# Transportes de mercancías antes de 1960

<img src='img/cargo-transport-pre-1960.png' />

---

# También otra Matrix From Hell

<img src='img/also-a-matrix-from-hell.png' />

---

# Solución: El transporte intermodal

<img src='img/intermodal-shipping-container.png' />

---

# Docker es un sistema de contenedores para software

<img src='img/shipping-container-for-code.png' />aplicaciones

---

# Docker elimina la Matriz

<img src='img/eliminates-matrix-from-hell.png' />

---

# Containers: Caracteríasticas *disruptivas* 

* **Encapsulación**: Aplicaciones y todas sus dependencias encapsuladas con una * interfaz estándar.  *Puerto TCP, start, stop, logs, límites...* **Densidad**:
* Ligereza significa Maximizacioń de recursos Hardware Más aplicaciones en el
* mismo Rack Hardware **Inició rápido**. Una VM sin el sobrecoste de una VM.
* Reinicio al estado inicial instantáneo.  **Repetitividad** y consistencia.
* Builds repetibles y automáticos.  Construye una vez. Despliega en local,
* test, QA, pre, prod, cloud, PaaS...  Lleva el trabajo colaborativo también a
* la parte Ops.  http://hub.docker.io Gestión de contenedores como código
* (commit / push / pull / diff) Aislamiento y seguridad

---
# Extremadamente ligeros: Densidad e Inicio rápido

<img src='img/containers-vs-vms.png' />

---
# Repetitividad y portabilidad

* Evita el problema de "**En mi máquina funciona**"

<img src='img/works-on-my-machine.jpg' />

---
# Arquitectura Docker

<img src='img/docker_nested_arch.png' />

Necesitamos: kernel >= 3.8

---
# Arquitectura Docker

<img src='img/docker_3d_arch.png' />

---

# Aplicaciones Dockerizadas: Ciclo de vida

<img src='img/basics-of-docker-system.png' />

---
# Aplicaciones Dockerizadas

* Proceso creación Imágenes
    * Manual (run, apt-get [...], commit, push)
    * Automático: Dockerfiles

* Estilo Containers:
    * Un sólo proceso
    * Múltiples procesos encapsulados en un container
        * Gestor procesos: supervisor, circusd, runit, systemd
        * Ej: `varnish | nginx | tomcat7`


--- 
# Docker CLI Básico

    !bash
    $ sudo docker

* **ps**: Lista contenedores
* **images**: Lista imágenes
* **run**: Crea un container de una imagen
* **start/stop**: Para un container
* **build**: Crea una imagen de una Dockerfile
* **inspect**: Inspecciona una imagen
* **logs**: Ver logs (stdout/stderr) de un container
* **push/pull** push / pull imágenes del repositorio
