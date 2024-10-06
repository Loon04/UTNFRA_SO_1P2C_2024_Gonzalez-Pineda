#!/bin/bash

echo "creo el grupo"

sudo groupadd p1c2_2024_gAlumno

sudo groupadd p1c2_2024_gProfesores

echo "verifico si los grupos fueron creados"

cat /etc/group

echo "creo a los usuarios con mi clave de usuario"

sudo useradd -m -s /bin/bash -p "$(sudo grep vagrant /etc/shadow | awk -F ':' '{print $2}')" p1c2_2024_P1

sudo useradd -m -s /bin/bash -p "$(sudo grep vagrant /etc/shadow | awk -F ':' '{print $2}')" p1c2_2024_A1

sudo useradd -m -s /bin/bash -p "$(sudo grep vagrant /etc/shadow | awk -F ':' '{print $2}')" p1c2_2024_A2

sudo useradd -m -s /bin/bash -p "$(sudo grep vagrant /etc/shadow | awk -F ':' '{print $2}')" p1c2_2024_A3


echo "agrego a los usuarios a sus respectivos grupos"

sudo usermod -aG p1c2_2024_gProfesores p1c2_2024_P1

sudo usermod -aG p1c2_2024_gAlumnos p1c2_2024_A1

sudo usermod -aG p1c2_2024_gAlumnos p1c2_2024_A2

sudo usermod -aG p1c2_2024_gAlumnos p1c2_2024_A3


