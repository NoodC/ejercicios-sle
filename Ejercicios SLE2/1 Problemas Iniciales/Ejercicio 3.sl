var
	W_VAR1 = 8
	W_VAR2 = 0
	W_VAR3 = 0
	W_VAR4 = 0
	W_VAR5 = 0

inicio
	W_VAR2 = W_VAR1 * W_VAR1
	W_VAR3 = -W_VAR1
	W_VAR4 = (W_VAR2 + W_VAR1) / W_VAR1 
	W_VAR5 = -W_VAR4
	imprimir ("Los valores solicitados son, en orden:\n", W_VAR2, "\t", W_VAR3, "\t", W_VAR4, "\t", W_VAR5)
fin