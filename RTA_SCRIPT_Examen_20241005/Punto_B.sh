#!/bin/bash

echo "realizo las particiones"

sudo fdisk /dev/sdc << EOF

m
n
p
+1G

n
p
+1G

n
p
+1G

e

n
+1G

n
+1G

n
+1G

n
+1G

n
+1G

n
+1G

n

w
EOF

echo "veo la particiones del disco"

sudo fdisk -l /dev/sdc

echo "formateo las particiones"

sudo mkfs -t ext4 /dev/sdc1

sudo mkfs -t ext4 /dev/sdc2

sudo mkfs -t ext4 /dev/sdc3

sudo mkfs -t ext4 /dev/sdc5

sudo mkfs -t ext4 /dev/sdc6

sudo mkfs -t ext4 /dev/sdc7

sudo mkfs -t ext4 /dev/sdc8

sudo mkfs -t ext4 /dev/sdc9

sudo mkfs -t ext4 /dev/sdc10

sudo mkfs -t ext4 /dev/sdc11


echo "monto"

echo "/dev/sdc1 /Examenes-UTN/alumno_1/parcial_1 ext4 defaults 0 0" | sudo tee -a /etc/fstab

echo "/dev/sdc2 /Examenes-UTN/alumno_1/parcial_2 ext4 defaults 0 0" | sudo tee -a /etc/fstab

echo "/dev/sdc3 /Examenes-UTN/alumno_1/parcial_3 ext4 defaults 0 0" | sudo tee -a /etc/fstab

echo "/dev/sdc5 /Examenes-UTN/alumno_2/parcial_1 ext4 defaults 0 0" | sudo tee -a /etc/fstab

echo "/dev/sdc6 /Examenes-UTN/alumno_2/parcial_2 ext4 defaults 0 0" | sudo tee -a /etc/fstab

echo "/dev/sdc7 /Examenes-UTN/alumno_2/parcial_3 ext4 defaults 0 0" | sudo tee -a /etc/fstab

echo "/dev/sdc8 /Examenes-UTN/alumno_3/parcial_1 ext4 defaults 0 0" | sudo tee -a /etc/fstab

echo "/dev/sdc9 /Examenes-UTN/alumno_3/parcial_2 ext4 defaults 0 0" | sudo tee -a /etc/fstab

echo "/dev/sdc10 /Examenes-UTN/alumno_3/parcial_3 ext4 defaults 0 0" | sudo tee -a /etc/fstab

echo "/dev/sdc11 /Examenes-UTN/profesores ext4 defaults 0 0" | sudo tee -a /etc/fstab

sudo mount -a









