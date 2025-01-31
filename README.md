# PRÁCTICAS MÓDULO CLOUD

[![Build Status](https://travis-ci.org/jmsosso/cloud-lab.svg?branch=master)](https://travis-ci.org/jmsosso/cloud-lab)

## Preparación

* Cuenta de [Docker Hub](https://hub.docker.com/)
* Cuenta de [AWS](http://aws.amazon.com/)
* Haz un fork de este repositorio

## Práctica 1

Dado este proyecto en NodeJS, crea su Dockerfile sabiendo que nos han pedido como imagen base ubuntu:18.04, versión 10 de NodeJS, el 8888 será el puerto donde exponga la comunicación la applicación, la señal de *STOP* debe llegarle a la aplicación y el contenedor podría ser iniciado con cualquier proceso.

## Práctica 2

Sube la imagen de Docker a DockerHub.

## Práctica 3

Automatiza el proceso de creación de la imagen de Docker y su subida a Docker Hub después de cada cambio en el repositorio.

## Práctica 4

Crea un servidor y despliega la imagen de Docker en AWS utilizando Terraform.

# Notas

URL de la imagen en Docker Hub:

https://hub.docker.com/r/jmsosso/cloud-lab

## Pasos para desplegar en AWS

Descargar el ejecutable de *terraform* de https://www.terraform.io/downloads.html

```
cd terraform
terraform init
export AWS_ACCESS_KEY_ID=<key>
export AWS_SECRET_ACCESS_KEY=<secret>
terraform apply
```
