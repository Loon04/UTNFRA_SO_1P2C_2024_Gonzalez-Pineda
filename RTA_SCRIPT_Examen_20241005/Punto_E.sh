#!/bin/bash

echo "guardo la info que se me pide de la ram en el archivo"


cat /proc/meminfo | grep -i memtotal | awk '{print}' > RTA_ARCHIVOS_Examen_20241005/Filtro_Basico.txt

echo "agrego la info del chassis en el archivo"

sudo dmidecode -t chassis | grep -A 1 -i chassis | awk '{print}' >> RTA_ARCHIVOS_Examen_20241005/Filtro_Basico.txt

echo "muestro el contenido del archivo"

cat RTA_ARCHIVOS_Examen_20241005/Filtro_Basico.txt
 
