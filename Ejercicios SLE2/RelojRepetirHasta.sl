/*
Nombre del programa: Ejercicio Reloj Caso Repetir Hasta
Autor: Lucas Facundo Jara Lombardo
N° Curso: 318
Profesor: Katherine Cortez
Fecha: 07/11/2025

Objetivo: Simular el funcionamiento de un reloj desde las 00:00:00 hasta las 23:59:59, usando la estructura repetir-mientras.
*/

var
	HORAS = 0
	MINUTOS = 0
	SEGUNDOS = 0

//Proceso Principal

//En este caso, los contadores suman hasta llegar al valor que genera un cambio en el siguiente orden (ej. 60 segundos suma un minuto), luego se reinician gracias a la estructura anidada
inicio
	repetir
		repetir
			repetir
				mostrarhora()
				SEGUNDOS = SEGUNDOS + 1
			hasta (SEGUNDOS == 60)
			SEGUNDOS = 0
			MINUTOS = MINUTOS + 1
		hasta (MINUTOS == 60)
		MINUTOS = 0
		HORAS = HORAS + 1
	hasta (HORAS == 24)
fin

//Subtrutina que permite mostrar la hora en el formato correcto
subrutina mostrarhora()
	inicio
		imprimir (HORAS, ":", MINUTOS, ":", SEGUNDOS, "\n")
	fin