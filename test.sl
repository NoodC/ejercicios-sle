
// Autor: Carlos Medina 
// N Curso: 318
// Profesor: CORTEZ DE LOBOS KATHERINE
// Fecha: 18/09/2025
// Enunciado del problema: Determinar si una persona puede votar segun su edad y nacionalidad.
// a) OBJETIVO

// El objetivo de este programa es leer la edad de una persona y su nacionalidad usando un numero (1 para paraguayo, 0 para extranjero).
// Luego, con estos datos, se determinara si la persona cumple los requisitos para votar.
// Finalmente, se mostrara en pantalla el resultado.
//
// Los elementos solicitados en las consignas son los siguientes:
// a. Ingreso de datos: se solicitan la edad y un numero para la nacionalidad.
// b. Estructura alternativa simple y doble: se usan para determinar si la persona puede o no votar.
// c. Operadores logicos: se usa el operador 'Y' para verificar ambas condiciones.
// d. Calculos: este problema no requiere calculos numericos complejos.
// e. Impresiones: se imprimen los resultados en la pantalla.

// b) ENTORNO

var
  edad: numerico
  nacionalidad: numerico 
EdadFaltante: numerico
inicio
  imprimir ("Por favor, ingresa tu edad:")
  leer (edad)
  imprimir ("Por favor, ingresa tu nacionalidad:")
  imprimir ("Ingresa 1 si eres paraguayo.")
  imprimir ("Ingresa 0 si eres extranjero.")
  leer (nacionalidad)

  imprimir ("                                ")
  si ( (edad >= 18) and (nacionalidad == 1) )
  {
      imprimir ("Usted es apto para votar.")
    
    sino
    
      imprimir ("Usted no es apto para votar.")
  }
	EdadFaltante = 18 - edad
  si (edad < 18)
	{
		imprimir ("Le faltan ", EdadFaltante, " años para poder votar.")
  }
fin
