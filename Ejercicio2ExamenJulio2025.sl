var
	ORIGEN : matriz [5, 5] numerico
	DESTINO : matriz [5, 5] numerico
	i : numerico //Contador de posicion horizontal
	j : numerico //Contador de posicion vertical
	CARGA = 1 //Contador auxiliar para la carga automatica de la matriz

inicio
	procesoInicial()
	procesoPrincipal()
	procesoFinal()
fin

subrutina procesoInicial()
	inicio
	//Para este ejemplo, se carga la matriz secuencialmente con valores de 1 a 25. Se deja comentado el proceso de carga manual
		desde i = 1 hasta 5
			{
			desde j = 1 hasta 5
				{
					//imprimir ("Ingrese el valor a ingresar en la posicion ", i, ", ", j)
					//leer (ORIGEN[i, j])
					ORIGEN [i,j] = (CARGA)
					CARGA = CARGA + 1
				}
			}
		DESTINO = ORIGEN //Se duplica la matriz para poder prescindir de una variable auxiliar
	fin

subrutina procesoPrincipal()
	inicio
		/*Para realizar el cambio, hay dos caminos: indicar explicitamente las casillas a intercambiar, o usar contadores para recorrer los triangulos a intercambiar, siendo este ultimo metodo mas atractivo.
		Se incluyen ambos metodos.
		Como recordatorio, para este ejercicio en particular hay que cambiar los siguientes pares de casillas: [1,2] y [2,5], [1,3] y [3,5], [1,4] y [4,5], [2,3] y [3,4]*/
		
		//Metodo facil
		//DESTINO[1,2] = ORIGEN[2,5]
		//DESTINO[2,5] = ORIGEN[1,2]
		//DESTINO[1,3] = ORIGEN[3,5]
		//DESTINO[3,5] = ORIGEN[1,3]
		//DESTINO[1,4] = ORIGEN[4,5]
		//DESTINO[4,5] = ORIGEN[1,4]
		//DESTINO[2,3] = ORIGEN[3,4]
		//DESTINO[3,4] = ORIGEN[4,3]
	
		//Metodo facha (ligeramente mas complejo pero mas atractivo a la hora de evaluar)
		desde j = 2 hasta 4
		{
			DESTINO [1,j] = ORIGEN [j,5]
			DESTINO [j,5] = ORIGEN [1,j]
		}
		DESTINO [2,3] = ORIGEN [3,4]
		DESTINO [3,4] = ORIGEN [2,3]
	fin

subrutina procesoFinal()
inicio
	//Imprime la matriz de forma ordenada (desalineada en SLE por la fuente monoespaciada)
	imprimir("Matriz cambiada \n")
	desde i = 1 hasta 5
	{
		desde j = 1 hasta 5
		{
			imprimir(DESTINO [i, j], " ")
		}
		imprimir("\n")
	}
fin