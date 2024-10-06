#!/bin/bash

echo "creo el grupo"

sudo groupadd p1c2_2024_gAlumno

sudo groupadd p1c2_2024_gProfesores

echo "verifico si los grupos fueron creados"

cat /etc/group

