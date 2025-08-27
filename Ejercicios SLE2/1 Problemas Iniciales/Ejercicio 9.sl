var
	num = 0
inicio
	imprimir ("Ingrese un numero:\t")
	leer (num)
	si (num < 0)
	{
		num = -num
	}
	imprimir ("El valor absoluto es:\t", num)
fin