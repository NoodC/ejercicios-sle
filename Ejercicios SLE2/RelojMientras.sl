/*
Nombre del programa: Ejercicio Reloj Caso Repetir Mientras
Autor: Lucas Facundo Jara Lombardo
N° Curso: 318
Profesor: Katherine Cortez
Fecha: 07/11/2025

Objetivo: Simular el funcionamiento de un reloj desde las 00:00:00 hasta las 23:59:59, usando la estructura mientras.
*/

var
	HORAS = 0		// Contador de horas
	MINUTOS = 0		// Contador de minutos
	SEGUNDOS = 0	// Contador de segundos

// Proceso Principal

// Bajo esta estructura, es necsario acomodar la condicion para excluir de la impresion a los numeros que se cuentan pero generan un cambio en el siguiente orden (ej 60 segundos suma un minuto)
inicio
	mientras (HORAS < 24)
	{
		mientras (MINUTOS < 60)
		{
			mientras (SEGUNDOS < 60)
			{
				mostrarhora()
				SEGUNDOS = SEGUNDOS + 1
			}
			SEGUNDOS = 0
			MINUTOS = MINUTOS + 1
		}
		MINUTOS = 0
		HORAS = HORAS + 1
	}
fin

// Subrutina sencilla para mostrar la hora en el formato correcto
subrutina mostrarhora()
	inicio
		imprimir (HORAS, ":", MINUTOS, ":", SEGUNDOS, "\n")
	fin