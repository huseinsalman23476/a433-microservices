#!/bin/sh

# Membuat Docker image dari Dockerfile
echo "------------------------------------------------------------------"
echo "Membuat Docker image dari Dockerfile"
echo "------------------------------------------------------------------"
docker build -t order-service:latest .
echo

# Melihat daftar image di lokal
echo "------------------------------------------------------------------"
echo "Melihat daftar image di lokal"
echo "------------------------------------------------------------------"
docker images
echo

# Mengubah nama image agar sesuai dengan format GitHub Packages
echo "------------------------------------------------------------------"
echo "Mengubah nama image agar sesuai dengan format GitHub Packages"
echo "------------------------------------------------------------------"
docker tag order-service:latest ghcr.io/huseinsalman23476/order-service:latest
echo

# Login ke GitHub Packages via Terminal
echo "------------------------------------------------------------------"
echo "Login ke GitHub Packages via Terminal"
echo "------------------------------------------------------------------"
echo $CR_PAT | docker login ghcr.io -u huseinsalman23476 --password-stdin
echo

# Mengunggah image ke GitHub Packages
echo "------------------------------------------------------------------"
echo "Mengunggah image ke GitHub Packages"
echo "------------------------------------------------------------------"
docker push ghcr.io/huseinsalman23476/order-service:latest