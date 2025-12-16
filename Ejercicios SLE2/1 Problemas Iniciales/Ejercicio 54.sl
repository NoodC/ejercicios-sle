/*
Nombre del programa: Ejercicio 1.54
Autor: Lucas Facundo Jara Lombardo
N° Curso: 318
Profesor: Katherine Cortez
Fecha: 06/10/2025

Objetivo: Hallar el producto de dos numeros por sumas sucesivas, considerando todos los casos posibles
*/

var
	FACTOR_UNO : numerico
	FACTOR_DOS : numerico
	CANTIDAD_SUMAS : numerico
	PRODUCTO : numerico

inicio
	LEER_FACTORES()
	SUMAS_SUCESIVAS()
	MOSTRAR_RESULTADO()
fin

subrutina LEER_FACTORES()
	inicio
		imprimir ("Ingrese el primer factor")
		leer (FACTOR_UNO)
		imprimir ("Ingrese el segundo factor")
		leer (FACTOR_DOS)
	fin

subrutina SUMAS_SUCESIVAS()
	inicio
		si (FACTOR_DOS > 0) 
		{
			mientras (CANTIDAD_SUMAS < FACTOR_DOS)
			{
				PRODUCTO = PRODUCTO + FACTOR_UNO
				CANTIDAD_SUMAS = CANTIDAD_SUMAS + 1
			}
		sino si (FACTOR_DOS < 0)
			FACTOR_DOS = FACTOR_DOS * -1
			mientras (CANTIDAD_SUMAS < FACTOR_DOS)
			{
				PRODUCTO = PRODUCTO + FACTOR_UNO
				CANTIDAD_SUMAS = CANTIDAD_SUMAS + 1
			}
			PRODUCTO = PRODUCTO * -1
		sino 
			PRODUCTO = 0 // Si el factor no es mayor ni menor a 0, entonces es 0, y el producto será 0
		}
	fin

subrutina MOSTRAR_RESULTADO()
	inicio
		imprimir ("El producto es: \t", PRODUCTO)
	fin
