/*
Nombre del programa: Ejercicio 1.27
Autor: Lucas Facundo Jara Lombardo
N° Curso: 318
Profesor: Katherine Cortez
Fecha: 01/10/2025

Objetivo: Ingresar una serie de numeros, hallar su sumatoria, su cuadrado, su cubo y el promedio de la mimsma.
*/

var
	V_ENTRADA : cadena 
	V_NUMERO = 0
	V_SUMATORIA = 0
	V_CUADRADO = 0
	V_CUBO = 0
	V_CANTIDAD = 0

inicio
	LEER_NUMERO()
	CALCULO_SUMATORIA()
	MOSTRAR_RESULTADOS()
fin

subrutina LEER_NUMERO()
	inicio
		imprimir ("Ingrese un numero, ENTER para terminar: \t")
		leer (V_ENTRADA)
		V_NUMERO = val(V_ENTRADA) // Convierte el dato de cadena a numerico
	fin

subrutina CALCULO_SUMATORIA()
	inicio
		mientras (V_ENTRADA <> "")	// Como solucionar la condición de repetición? Ingresando como cadena y luego convirtiendo con una funcion estandar de SL
		{
			V_SUMATORIA = V_SUMATORIA + V_NUMERO
			V_CUADRADO = V_CUADRADO + V_NUMERO^2
			V_CUBO = V_CUBO + V_NUMERO^3
			V_CANTIDAD = V_CANTIDAD + 1
			LEER_NUMERO()
		}
	fin

subrutina MOSTRAR_RESULTADOS()
	inicio
		imprimir ("La sumatoria es:", V_SUMATORIA, "\n")
		V_NUMERO = V_SUMATORIA / V_CANTIDAD
		imprimir ("El promedio de la serie es:", V_NUMERO, "\n")
		imprimir ("La sumatoria de los cuadrados es:", V_CUADRADO, "\n")
		imprimir ("La sumatoria de los cubos es:", V_CUBO, "\n")
	fin
