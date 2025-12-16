/*
Nombre del programa: Ejercicio 1.54
Autor: Lucas Facundo Jara Lombardo
N° Curso: 318
Profesor: Katherine Cortez
Fecha: 07/11/2025

Objetivo: Dada una nota mínima, imprimir todos los nombres que alcancen la nota mínima para una beca. Al final, avisar al usuario si la beca ha quedado sin ocupar.
*/

var
	NOMBRE: cadena	// Nombre del alumno
	NOTA: numerico	// Nota del alumno
	MINIMO: numerico	// Nota mnima para acceder a la beca
	BANDERA: numerico	// Bandera que permite al programa saber si por lo menos un alumno logro obtener la beca
inicio
	// Proceso Inicial
	leerminimo()
	leernombre()
	
	// Proceso Principal
	mientras (NOMBRE <> "") // Esta condicion impide juntar las lecturas de nombre y nota en un solo subprograma, por lo tanto es mejor separar cada lectura en su propio subprograma
		leernota()
		si (NOTA >= MINIMO)
		{
			imprimir (NOMBRE)
			BANDERA = 1
		}
		leernombre()
	hasta(NOMBRE == "") // Hasta que el usuario presione "Enter"
	
	// Proceso final
	si (BANDERA <> 1)
	{
		imprimir ("\n La beca ha quedado vacante")
	}
fin

subrutina leerminimo()
	inicio
		imprimir("Ingrese la nota minima para la beca \n")
		leer (MINIMO)
	fin

subrutina leernombre()
	inicio
		imprimir ("Ingrese el nombre del alumno")
		leer (NOMBRE)
	fin

subrutina leernota()
	inicio
		imprimir ("Ingrese la nota del alumno")
		leer (NOTA)
	fin
