/*
Nombre del programa: Ejercicio 1.24
Autor: Lucas Facundo Jara Lombardo
N° Curso: 318
Profesor: Katherine Cortez
Fecha: 04/11/2025

Objetivo: Hallar el valor de la función de X, según los intervalos dados por el enunciado.
*/

var
	NUMERO: numerico
	FUNCION: numerico

inicio
	// Proceso Inicial
	cls()
	imprimir ("Introduzca un valor para X: ") // El usuario ingresa el valor de X 
	leer (NUMERO)

	// Proceso Principal
	eval // Se evalua el valor de X y se realizan las operaciones segun el caso
	{
	caso (NUMERO > 5)
		FUNCION = NUMERO - 5
	caso (-2 <= NUMERO and NUMERO<= 5)
		FUNCION = 71
	caso (NUMERO < -2)
		FUNCION = NUMERO + 10
	}

	//Proceso Final
	imprimir ("X vale ", NUMERO, ", y f(X) vale ", FUNCION) //Se muestra el valor de X y de f(X)
fin
