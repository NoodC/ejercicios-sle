var
	num1 = 0
	num2 = 0
inicio
	imprimir ("Ingrese 2 numeros: \n")
	leer (num1, num2)
	si ((num1 + num2) > 50)
	{
		num1 = ((num1 + num2) * 10) - num2
		imprimir (num1)
	sino
		num2 = (num1 + num2)
		imprimir (num1, "\t", num2)
	}
fin