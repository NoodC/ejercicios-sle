var
	W_VAR1 = 0
	W_VAR2 = 0
	W_SUMA = 0
	W_RESTA = 0
	W_MULT = 0
	W_DIV = 0
inicio
	imprimir ("Ingrese dos valores:\n")
	leer (W_VAR1, W_VAR2)
	W_SUMA = W_VAR1 + W_VAR2
	W_RESTA = W_VAR1 - W_VAR2
	W_MULT = W_VAR1 * W_VAR2
	W_DIV = W_VAR1 / W_VAR2
	imprimir ("Los resultados de las operaciones fundamentales son: ", "\n Suma:", W_SUMA, "\n Resta:", W_RESTA, "\n Multiplicación:", W_MULT, "\n División:", W_DIV)
fin