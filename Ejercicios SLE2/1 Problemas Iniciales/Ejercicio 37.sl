/*
Nombre del programa: Ejercicio 1.37
Autor: Lucas Facundo Jara Lombardo
N° Curso: 318
Profesor: Katherine Cortez
Fecha: 06/10/2025

Objetivo: Ingresar 300 numeros, imprimir el promedio de cada 3 numeros consecutivos
*/
var
	CONTADOR_INGRESO = 0
	CONTADOR_TRIO = 0
	INGRESO : numerico
	SUMATORIA = 0

inicio
	mientras (CONTADOR_INGRESO < 300)
	{
		mientras (CONTADOR_TRIO < 3)
		{
			imprimir ("Ingrese un numero") // Esta linea genera un error que no logro comprender en la impresion luego del primer bucle, pero aparentemente la entrada de datos sigue funcionando normalmente 
			leer (INGRESO)
			SUMATORIA = SUMATORIA + INGRESO
			CONTADOR_INGRESO = CONTADOR_INGRESO + 1
			CONTADOR_TRIO = CONTADOR_TRIO + 1
		}
		SUMATORIA = SUMATORIA / 3
		imprimir ("El promedio de los ultimos 3 numeros ingresados es: \t", SUMATORIA)
		CONTADOR_TRIO = 0
		SUMATORIA = 0
	}
fin
