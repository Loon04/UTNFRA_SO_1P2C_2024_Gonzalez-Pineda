#!/bin/bash

echo "creo el grupo"

sudo groupadd p1c2_2024_gAlumno
echo
sudo groupadd p1c2_2024_gProfesores

echo "verifico si los grupos fueron creados"

cat /etc/group

echo "creo a los usuarios con mi clave de usuario"

sudo useradd -m -s /bin/bash -p "$(sudo grep vagrant /etc/shadow | awk -F ':' '{print $2}')" p1c2_2024_P1
echo
sudo useradd -m -s /bin/bash -p "$(sudo grep vagrant /etc/shadow | awk -F ':' '{print $2}')" p1c2_2024_A1
echo
sudo useradd -m -s /bin/bash -p "$(sudo grep vagrant /etc/shadow | awk -F ':' '{print $2}')" p1c2_2024_A2
echo
sudo useradd -m -s /bin/bash -p "$(sudo grep vagrant /etc/shadow | awk -F ':' '{print $2}')" p1c2_2024_A3
echo

echo "agrego a los usuarios a sus respectivos grupos"

sudo usermod -aG p1c2_2024_gProfesores p1c2_2024_P1
echo
sudo usermod -aG p1c2_2024_gAlumnos p1c2_2024_A1
echo
sudo usermod -aG p1c2_2024_gAlumnos p1c2_2024_A2
echo
sudo usermod -aG p1c2_2024_gAlumnos p1c2_2024_A3
echo
echo "le doy los permisos pedidos en la consigna al usuario"

sudo chmod 750 -R Examenes-UTN/alumno_1
echo
sudo chmod 760 -R Examenes-UTN/alumno_2
echo
sudo chmod 700 -R Examenes-UTN/alumno_3
echo
sudo chmod 775 -R Examenes-UTN/profesores
echo
echo "veo si los permisos estan aplicados tambien en los subdirectorios"

sudo ls -l Examenes-UTN/alumno_2

echo "cambio los propietarios y grupos"
echo
sudo chown -R p1c2_2024_A1:p1c2_2024_A1 Examenes-UTN/alumno_1
echo
sudo chown -R p1c2_2024_A2:p1c2_2024_A2 Examenes-UTN/alumno_2
echo
sudo chown -R p1c2_2024_A3:p1c2_2024_A3 Examenes-UTN/alumno_3
echo
sudo chown -R p1c2_2024_P1:p1c2_2024_gProfesores Examenes-UTN/profesores

echo "veo si estan bien los propietarios y grupos"

sudo ls -l Examenes-UTN/

