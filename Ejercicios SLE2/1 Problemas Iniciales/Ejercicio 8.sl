var
	num1 = 0
	num2 = 0
inicio
	imprimir ("Ingrese dos numeros \n")
	leer (num1, num2)
	si ( num1 > 0)
	{
		num1 = (num2 + num1)^3
	sino
		num1 = (num2 + num1)^2
	}
	imprimir ("El resultado es:\t", num1)
fin