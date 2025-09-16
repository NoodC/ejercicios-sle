/*
Nombre del programa: InscripcionesElecciones
Autor: Lucas Facundo Jara Lombardo
N° Curso: 318
Profesor: Katherine Cortez
Fecha: 15/09/2025
Enunciado: Un colegio se encuentra en la etapa previa a las campañas de elecciones del Centro de Estudiantes. Las diferentes listas deben presentar 
sus candidatos a presidente del Centro, los cuales deben cumplir ciertos requisitos segun el reglamento: no deben tener compromisos conductuales vigentes, deben 
tener un promedio academico de por lo menos 4.0, y estar en segundo año de la media. Los datos que deben ingresar son: nombre y apellido (Enter para finalizar), 
lista a la que pertenecen, curso, promedio academico y la existencia de compromisos (1 para verdadero, 0 para falso). Al aprobar una inscripcion, se debe 
mostrar el mensaje "Aprobado:" junto a su nombre y su lista. Al finalizar, se debe mostrar el numero total de candidatos  y si son solo 2 candidatos, mostrar el 
mensaje "¡Este año las elecciones seran reñidas!".


Objetivo: Filtrar los candidatos en base a unos criterios dados, mostrar el numero de candidatos aprobados*/

var
	V_NOMBRE : cadena
	V_COMPROMISO : numerico
	V_PROMEDIO : numerico
	V_CURSO : numerico
	V_LISTA : numerico
	V_CONTADOR = 0

inicio
	cls() //Subrutina predefinida que limpia la ventana de ejecucion
	TOMAR_NOMBRE()
	mientras(V_NOMBRE <> "")
	{
		TOMAR_DATOS()
		COMPROBAR_DATOS()
		cls()
		TOMAR_NOMBRE()
	}
	FINALIZAR()
fin

subrutina TOMAR_NOMBRE()
	inicio
		imprimir ("Ingresar nombre, presionar ENTER para terminar: \t")
		leer (V_NOMBRE)
	fin

subrutina TOMAR_DATOS()
	inicio
		imprimir("Ingrese el curso: \t")
		leer (V_CURSO)
		imprimir ("Ingrese el promedio académico: \t")
		leer (V_PROMEDIO)
		imprimir ("¿Tiene compromisos conductuales vigentes? 1 para si, 0 para no: \t")
		leer (V_COMPROMISO)
		imprimir ("Ingrese el número de lista al que pertenece: \t")
		leer (V_LISTA)
	fin

subrutina COMPROBAR_DATOS()
	inicio
		si ((V_COMPROMISO == 0) and (V_PROMEDIO >= 4) and (V_CURSO == 2))
		{
			imprimir ("Aprobado:\t", V_NOMBRE, " lista\t", V_LISTA)
			V_CONTADOR = V_CONTADOR + 1
		sino
			imprimir ("Rechazado: el aplicante no cumple con todos los requisitos")
		}
	fin

subrutina FINALIZAR()
	inicio
		imprimir ("El número de participantes este año es:\t", V_CONTADOR)
		si (V_CONTADOR == 2)
		{
			imprimir ("¡Este año las elecciones seran reñidas!")
		}
	fin
