/*
Nombre del programa: JB_Ejercicio_1_27.sl

Autor: Johan Esteban Bonet Ramirez

Prof:Katherine Cortez de lobos

Fecha: 01/10/25

Enunciado: Ingresar una serie de numeros (Enter para Fin). Calcular e imprimir.
* Aicion (NUMERO)
*Adicion(NUMERO^2)
*Adicion(NUMERO^3)
Imprimir tambien, el promedio de todos los valores ingresados.
 */
	/*Objetivo
Hallar la adicion de numeros, las potencias y el promedio de los numeros ingresados.
*/
/*Entorno*/
var
W_num       :   numerico
W_numeros   :   numerico 
W_cuadratica:   numerico
W_cubica    :   numerico 
W_cont      :   numerico
W_pro       :   numerico

 inicio
  PROCESO_INICIAL()
    mientras (W_num<>0) 
  {  
  PROCESO_PRINCIPAL()
  }
  PROCESO_FINAL()
 fin 

  /* Rutinas*/

 sub PROCESO_INICIAL()
   inicio
    cls()
    imprimir("inicio del programa:")
    INICIO()
    Datos()
	 fin
 sub PROCESO_PRINCIPAL()
 inicio
  si(W_num > 0){
  W_numeros =W_numeros + W_num
  W_cuadratica =W_cuadratica+(W_num^2)
  W_cubica =W_cubica +(W_num^3)
  W_cont=W_cont + 1
  }
  fin
 sub PROCESO_FINAL()
inicio
 imprimir ("La sumatoria de los números es:, W_numeros") 
 imprimir ("La sumatoria de los números elevados al cuadrado es:,W_cuadratica" )
 imprimir ("La sumatoria de los números elevados al cubo es:, W_cubica") 
 si (W_cont > 0 ) {
  imprimir ("El promedio de los números ingresados es: W_pro")
    W_pro = W_numeros / W_cont 
 sino 
  imprimir ("No se han ingresado números. Imposible calcular el promedio")
 }
  imprimir ("** FIN DE PROCESO **")
fin
	
 sub INICIO()
inicio
  W_numeros = 0 
  W_cuadratica = 0 
  W_cubica= 0 
  W_cont = 0 
fin 
sub Datos()
inicio
 imprimir ("Ingrese un número ó ENTER para terminar:, W_num" )
  leer(W_num)

fin