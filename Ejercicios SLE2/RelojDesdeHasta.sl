/*
Nombre del programa: Ejercicio Reloj Caso Desde Hasta
Autor: Lucas Facundo Jara Lombardo
N° Curso: 318
Profesor: Katherine Cortez
Fecha: 07/11/2025

Objetivo: Simular el funcionamiento de un reloj desde las 00:00:00 hasta las 23:59:59, usando la estructura desde-hasta.
*/

var 
	HORAS: numerico		// Contador de horas
	MINUTOS: numerico		// Contador de minutos
	SEGUNDOS: numerico	// Contador de segundos

// Proceso Principal

//Bajo esta estructura, los intervalos son cerrados, es decir, incluyen los extremos. Los contadores se suman automaticamente al terminar un ciclo.
inicio
	desde HORAS=0 hasta 23
	{
		desde MINUTOS = 0 hasta 59
		{
			desde SEGUNDOS = 0 hasta 59
			{
				mostrarhora()
			}
		}
	}
fin

subrutina mostrarhora() // Subrutina sencilla para imprimir los contadores en el formato correcto
	inicio
		imprimir (HORAS, ":", MINUTOS, ":", SEGUNDOS, "\n")
	fin