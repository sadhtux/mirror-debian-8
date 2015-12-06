#!/bin/bash
#
# Script principal para la puesta en funcionamiento
# del Mirror local de Debian 8 (jessie)
#
# Nombre del Archivo: START.debmirror.sh
# Fecha: 05-12-2015
# Version 1.0
####################################################

# Directorio de Trabajo
rutaWork='~/mirror-debian-8'
cd $rutaWork
# Script responsable del repositorio principal
main='./Debian.8.Main.sh'
# Script responsable del repositorio backports
backports='./Debian.8.Backports.sh'
# Script responsable del repositorio seguridad
security='./Debian.8.Security.sh'
# Script responsable del repositorio multimedia
multimedia='./Debian.8.Multimedia.sh'

/bin/bash $rutaWork/$main 2>> $rutaWork/error_debmirror_main.log
sleep 10
/bin/bash $rutaWork/$backports 2>> $rutaWork/error_debmirror_backports.log
sleep 10
/bin/bash $rutaWork/$security 2>> $rutaWork/error_debmirror_security.log
sleep 10
/bin/bash $rutaWork/$multimedia 2>> $rutaWork/error_debmirror_multimedia.log
sleep 10
exit
