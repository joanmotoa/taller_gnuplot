#!/bin/sh

FILE=`zenity  --multiple --file-selection --title="Select a File"`

case $? in
         0)
             wc -l $FILE 
             grep -c 'def' $FILE
             grep -c '()' $FILE 
             grep -c '#' $FILE;;
         1)
                echo "No ha seleccionado ningún archivo.";;
        -1)
                echo "Ha ocurrido un error inesperado.";;
esac
