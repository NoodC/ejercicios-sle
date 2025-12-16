/*
Nombre del programa: Ejercicio 1.24
Autor: Lucas Facundo Jara Lombardo
N° Curso: 318
Profesor: Katherine Cortez
Fecha: 05/11/2025

Objetivo: Hallar el valor de la función de X, según los intervalos dados por el enunciado. Repetir el proceso 80 veces.
*/

var
	NUMERO: numerico
	FUNCION: numerico
	BANDERA = 0	// Bandera para contar l numero de veces que se halla f(X)
inicio
	//Proceso Inicial
	mientras (BANDERA < 80) // Como la adicion a la bandera se realiza al final, cuando llega a 80 se detiene el bucle.
	{
		imprimir ("Introduzca un valor para X: ")
		leer (NUMERO)
		cls()
		// Proceso Principal
		eval
		{
		caso (NUMERO <= -7.2)
			FUNCION = NUMERO - 1
		caso (-7.2 < NUMERO and NUMERO < 2.3)
			FUNCION = 4 - NUMERO
		caso (2.3 <= NUMERO)
			FUNCION = NUMERO / 2
		}

		// Proceso Final
		imprimir ("X vale ", NUMERO, ", y f(X) vale ", FUNCION, "\n")
		BANDERA = BANDERA + 1
	}
fin
