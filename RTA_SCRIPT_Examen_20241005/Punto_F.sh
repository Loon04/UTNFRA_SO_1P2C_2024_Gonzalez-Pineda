#!/bin/bash

echo "guarda la info de la ip publica en el archivo nuevo"


echo "Mi IP publica es: $(curl -s ifconfig.me)" > RTA_ARCHIVOS_Examen20241005/Filtro_Avanzado.txt
echo 
echo "guardo mi usuario"

echo "Mi usuario es: $(whoami)" >> RTA_ARCHIVOS_Examen_20241005/Filtro_Avanzado.txt
echo

echo "guardo el hash de mi usuario"


echo "El Hash de mi Usuario es: $(sudo grep vagrant /etc/shadow | awk -F ':' '{print $2}')" >> RTA_ARCHIVOS_Examen_20241005/Filtro_Avanzado.txt
echo

echo "guardo la url de mi repositorio"


echo "La URL de mi repositorio es: $(git remote get-url origin)" >> RTA_ARCHIVOS_Examen_20241005/Filtro_Avanzado.txt
echo

echo "como se ve el archivo Filtro_Avanzado.txt"

cat RTA_ARCHIVOS_Examen_20241005/Filtro_Avanzado.txt


