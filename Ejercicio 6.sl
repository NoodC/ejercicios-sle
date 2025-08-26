var
	num1 = 7
	num2 = 5
	num3 = -8
	num4 = 10
	num5 = 0
inicio
	imprimir ("Los numeros son:\t", num1, num2, num3, num4, num5)
	si (num1 < num2)
	{
		intercambio (num1, num2)
	}
	si (num1 < num3)
	{
		intercambio (num1, num3)
	}
	si (num1 < num4)
	{
		intercambio (num1, num4)
	}
	si (num1 < num5)
	{
		intercambio (num1, num5)
	}
	si (num2 < num3)
	{
		intercambio (num2, num3)
	}
	si (num2 < num4)
	{
		intercambio (num2, num4)
	}
	si (num2 < num5)
	{
		intercambio (num2, num5)
	}
	si (num3 < num4)
	{
		intercambio (num3, num4)
	}
	si (num3 < num5)
	{
		intercambio (num3, num5)
	}
	si (num4 < num5)
	{
		intercambio (num4, num5)
	}
	imprimir ("Los numeros ordenados son:\t", num1, num2, num3, num4, num5)
fin
subrutina intercambio (numA, numB : numerico)
	var aux = 0
	inicio
		aux = numA
		numA = numB
		numB = aux
	fin