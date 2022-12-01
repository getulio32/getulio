#!/bin/bash

echo "Escolha uma numero:"
echo "1 - Somar "
echo "2 - Subtrair "
echo "3 - Multiplicar "
echo "4 - Dividir "
echo "5 - raiz "
echo "6 - potencia "

read equacao
  
echo "digite um numero"
  read num1
echo "digite outro numero"
  read num2


function somar(){
	soma=$(($1+$2))
	echo $soma
}

function subtrair(){
	subtrair=$(($1-$2))
	echo $subtrair
}

function multiplicar(){
	multiplicar=$(($1*$2))
	echo $multiplicar
}

function dividir(){
	dividir=$(($1/$2))
	echo $dividir
}

function raiz(){
	raiz=$((sqrt$1))
	echo $raiz
}

function potencia(){
	potencia=$(($1**$2))
	echo $potencia
}

  

if [ $equacao -eq 1 ]; then
  #resultado=$[num1+num2]
  resultado=$( somar num1 num2 )
elif [ $equacao -eq 2 ]; then
  resultado=$( subtrair num1 num2 )
elif [ $equacao -eq 3 ]; then
  resultado=$( multiplicar num1 num2 )
elif [ $equacao -eq 4 ]; then
  resultado=$( dividir num1 num2 )
elif [ $equacao -eq 5 ]; then
  resultado=$( echo "sqrt($num1)" | bc )
elif [ $equacao -eq 6 ]; then
  resultado=$(potencia num1 num2)

else
  echo "Opção inválida."
fi

echo "O resultado é: $resultado"

