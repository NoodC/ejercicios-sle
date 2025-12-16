var
	CODIGO: cadena
	DESCRIPCION : cadena
	TIPO : cadena
	PRECIO : numerico
	FECHA : numerico
	FRECUENCIAS: vector [30] numerico //Lleva registro de cuantas cosas se vendieron en una fecha dada, por ejemplo la posicion 15 cuenta cuantas cosas se vendieron en el dia 15 del mes
	MODA = 0 //Variable para registrar el dia con mayor cantidad de ventas
	MAYOR_FRECUENCIA = 0
	CANTIDAD_TIPO: vector [4] numerico //Lleva registro de la cantidad de objetos de cada tipo que se vendieron, donde A corresponde a la posicion 1, C a la 2, D a la 3, y M a la 4
	MENOR_VENTA = 0
	i :numerico // Contador para ciclos desde-hasta

inicio
	inicializar_vectores()
	imprimir ("Ingrese el codigo del producto: ")
	leer(CODIGO)
	mientras (CODIGO <> "")
	{
		imprimir ("Ingrese la descripcion del producto: ")
		leer (DESCRIPCION)
		imprimir ("Ingrese el tipo de producto: ")
		leer (TIPO)
		imprimir ("Ingrese el precio del producto: ")
		leer (PRECIO)
		imprimir ("Ingrese la fecha de venta del producto: ")
		leer (FECHA)
		verificar()
		cargarDatos()
		imprimir ("Ingrese el codigo del siguiente producto: ")
		leer (CODIGO)
	}
	//Se imprimen secuencialmente los datos, para formar una tabla 
	imprimir ("Fecha \t", "Cantidad de ventas") //Titulo de las columnas
	desde i = 1 hasta 30
		{
			imprimir (i, "\t", FRECUENCIAS[i], "\n")
			si (FRECUENCIAS[i] >= MAYOR_FRECUENCIA) //Condicion que permite rgistrar la moda
				{
					MODA = i
					MAYOR_FRECUENCIA = FRECUENCIAS[i]
				}
		}
	imprimir ("Mayor cantidad de ventas en un dia:", MAYOR_FRECUENCIA, ", Dia con mas ventas:", MODA)
	desde i = 1 hasta 4 //Busca el producto con menor cantidad de ventas y lo imprime segun el caso. Si dos productos son el menor, se imprime el ultimo
		{
			si (CANTIDAD_TIPO[i] <= MENOR_VENTA)
			{
				MENOR_VENTA = i
			}
		}
	eval
		{
			caso(MENOR_VENTA == 1)
				imprimir("Producto con menos ventas: Audio")
			caso(MENOR_VENTA == 2)
				imprimir("Producto con menos ventas: Computadora")
			caso(MENOR_VENTA == 3)
				imprimir("Producto con menos ventas: Discos")
			caso(MENOR_VENTA == 4)
				imprimir("Producto con menos ventas: Memoria")

		}
fin

subrutina inicializar_vectores() //Inicia los vectores en 0 para evitar errores
	inicio
		desde i = 1 hasta 30
			{
				FRECUENCIAS[i] = 0
			}
		desde i = 1 hasta 4
			{
				CANTIDAD_TIPO[i] = 0
			}
	fin

subrutina verificar() //Verifica los datos y no avanza hasta que se corrijan las entradas en cada categoria
	inicio
		imprimir ("Verificando datos")
		mientras ((TIPO <> "A") and (TIPO <> "C") and (TIPO <> "D") and (TIPO <> "M"))
		{
			imprimir ("Tipo de producto invalido, intente de nuevo:")
			leer (TIPO)
		}
		mientras ((PRECIO < 0) or (PRECIO <> int(PRECIO)))
		{
			imprimir ("Precio invalido, intente de nuevo")
			leer (PRECIO)
		}
		mientras ((FECHA < 1) or (FECHA > 30))
		{
			imprimir ("Fecha invalida, intente de nuevo")
			leer (FECHA)
		}
		imprimir ("Verificacion exitosa")
	fin

subrutina cargarDatos() //Anota los datos en los vectores segun el dia y el tipo de producto
	inicio
		FRECUENCIAS[FECHA] = FRECUENCIAS[FECHA] + 1
		eval
		{
			caso(TIPO == "A")
				CANTIDAD_TIPO[1] = CANTIDAD_TIPO[1] + 1
			caso(TIPO == "C")
				CANTIDAD_TIPO[2] = CANTIDAD_TIPO[2] + 1
			caso(TIPO == "D")
				CANTIDAD_TIPO[3] = CANTIDAD_TIPO[3] + 1
			caso(TIPO == "M")
				CANTIDAD_TIPO[4] = CANTIDAD_TIPO[4] + 1
		}
fin
