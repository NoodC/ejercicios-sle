var
	W_VAR1 = 3
	W_VAR2 = 7
	W_VAR3 = -3
	W_VAR4 = -6
	W_VAR5 = 16
inicio
	si (W_VAR1 < W_VAR2)
	{
		intercambio (W_VAR1, W_VAR2)
	}
	si (W_VAR1 < W_VAR3)
	{
		intercambio (W_VAR1, W_VAR3)
	}
	si (W_VAR1 < W_VAR4)
	{
		intercambio (W_VAR1, W_VAR4)
	}
	si (W_VAR1 < W_VAR5)
	{
		intercambio (W_VAR1, W_VAR5)
	}
fin

subrutina intercambio (W_A, W_B : numerico)
	var
		W_AUX = 0
	inicio
		W_AUX = W_A
		W_A = W_B
		W_B = W_AUX
	fin