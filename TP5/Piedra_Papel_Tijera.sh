#!/bin/bash

computadora=$((RANDOM%3))
case $computadora in
    0)
        computadora="piedra"
        ;;
    1)
        computadora="papel"
        ;;
    2)
        computadora="tijera"
        ;;
esac

echo "Ingrese piedra, papel o tijera"
read usuario
while [[ "$usuario" != "piedra" && "$usuario" != "papel" && "$usuario" != "tijera" ]]; 
do
echo "Error en los datos, ingrese nuevamente"
read usuario
done



if [[ "$computadora" == "$usuario" ]]; 
    then
    echo "Empate"
    elif [[ "$usuario" == "piedra" && "$computadora" == "tijera" || 
          "$usuario" == "papel" && "$computadora" == "piedra" || 
          "$usuario" == "tijera" && "$computadora" == "papel"  ]]; 
          then
          echo "Ganaste!"
      else
          echo "Gano la computadora"      
fi
echo "la computadora eligio $computadora"