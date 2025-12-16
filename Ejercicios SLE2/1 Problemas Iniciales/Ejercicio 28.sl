/*
Nombre del programa: Ejercicio 1.28
Autor: Lucas Facundo Jara Lombardo
N° Curso: 318
Profesor: Katherine Cortez
Fecha: 03/10/2025

Objetivo: Hallar y mostrar el promedio de calificaciones por sexo de una escuela
*/

var
	PROM_NENES = 0
	PROM_NENAS = 0
	CANTIDAD_NENES = 0
	CANTIDAD_NENAS = 0
	COD_ALUMNO : cadena
	COD_SEXO : cadena
	CALIFICACION : numerico
	
inicio
	INICIO_LECTURA()
	LECTURA_DATOS()
	MOSTRAR_RESULTADOS()
fin

subrutina INICIO_LECTURA()
	inicio
		imprimir("Ingrese codigo de alumno, ENTER para terminar \n")
		leer(COD_ALUMNO)
	fin

subrutina LECTURA_DATOS()
	inicio
		mientras(COD_ALUMNO <> "")
	{
		imprimir("Ingrese codigo de sexo (H o M) \n")
		leer(COD_SEXO)
		si (COD_SEXO == "H")
		{
			SUMAR_NENES()
		sino si (COD_SEXO == "M")
			SUMAR_NENAS()
		sino
			imprimir("Codigo invalido \n")
		}
		imprimir("Ingrese codigo de alumno, ENTER para terminar \n")
		leer(COD_ALUMNO)
	}
	fin

subrutina MOSTRAR_RESULTADOS()
	inicio
		si (CANTIDAD_NENES == 0)
		{
			imprimir ("El promedio de calificaciones de los hombres es:\t0\n") // Para evitar errores
		sino
			PROM_NENES = PROM_NENES / CANTIDAD_NENES
			imprimir ("El promedio de calificaciones de los hombres es:\t", PROM_NENES, "\n")
		}
		si (CANTIDAD_NENAS == 0)
		{
			imprimir ("El promedio de calificaciones de las mujeres es:\t0\n") // Para evitar errores
		sino
			PROM_NENAS = PROM_NENAS / CANTIDAD_NENAS
			imprimir ("El promedio de calificaciones de las mujeres es: \t", PROM_NENAS)
		}
	fin

subrutina SUMAR_NENES()
	inicio
		CANTIDAD_NENES = CANTIDAD_NENES + 1
		imprimir ("Ingrese la calificacion del alumno \n")
		leer (CALIFICACION)
		PROM_NENES = PROM_NENES + CALIFICACION
	fin

subrutina SUMAR_NENAS()
	inicio
		CANTIDAD_NENAS = CANTIDAD_NENAS + 1
		imprimir ("Ingrese la calificacion de la alumna \n")
		leer (CALIFICACION)
		PROM_NENAS = PROM_NENAS + CALIFICACION
	fin