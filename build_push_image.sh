#!/bin/sh
# build image docker dengan tag item-app:v1
docker build . -t item-app:v1
# menampilkan list image docker yang ada
docker image ls
# membuat tag baru dari item-app:v1
docker tag item-app:v1 ghcr.io/bagus-septianto/a433-microservices:v1
# manggunakan GITHUBPAT untuk docker login
echo $GITHUBPAT | docker login ghcr.io -u bagus-septianto --password-stdin
# push image ke github package
docker push ghcr.io/bagus-septianto/a433-microservices:v1