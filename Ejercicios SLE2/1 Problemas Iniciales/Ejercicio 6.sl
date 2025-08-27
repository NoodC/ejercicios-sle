var
	num1 = 3
	num2 = 7
	num3 = -3
	num4 = -6
	num5 = -16
	aux = 0
inicio
	si (num1 > num2)
	{
		aux = num1
		num1 = num2
		num2 = aux
	}
	si (num1 > num3)
	{
		aux = num1
		num1 = num3
		num3 = aux
	}
	si (num1 > num4)
	{
		aux = num1
		num1 = num4
		num4 = aux
	}
	si (num1 > num5)
	{
		aux = num1
		num1 = num5
		num5 = aux
	}
	si (num2 > num3)
	{
		aux = num2
		num2 = num3
		num3 = aux
	}
	si (num2 > num4)
	{
		aux = num2
		num2 = num4
		num4 = aux
	}
	si (num2 > num5)
	{
		aux = num2
		num2 = num5
		num5 = aux
	}
	si (num3 > num4)
	{
		aux = num3
		num3 = num4
		num4 = aux
	}
	si (num3 > num5)
	{
		aux = num3
		num3 = num5
		num5 = aux
	}
	si (num4 > num5)
	{
		aux = num4
		num4 = num5
		num5 = aux
	}
	aux = ((num1 + num2) - (num3 +num4)) * num5
	imprimir ("El resultado final es: \t", aux)
fin