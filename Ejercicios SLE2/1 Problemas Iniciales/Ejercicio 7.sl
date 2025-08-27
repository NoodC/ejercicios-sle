var
	var1 = 0
	var2 = 0
	var3 = 0
	var4 = 0
	var5 = 0
	var6 = 0
	var7 = 0
inicio
	imprimir ("Ingrese 7 variables")
	leer (var1, var2, var3, var4, var5, var6, var7)
	si ((var1 > var2) and (var3 > var4) and (var5 > var6))
	{
		var1 = var1 - var2
		var3 = var3 - var4
		var5 = var5 - var6
		var5 = var1 + var3 + var5
		si (var5 > var7)
		{
			var5 = var5 - var7
		}
	sino
		var1 = 0
		var3 = 0
		var5 = 0
	}
	imprimir (var1, "\t", var3, "\t", var5)
fin