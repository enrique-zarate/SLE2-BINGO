// VERIFICAR (SORTEO [cont],cont)

var
	CARTON: vector [10] numerico
	SORTEO: vector [10] numerico
	k,i,j,contador: numerico
inicio
	cls()
	SORTEO = {1,2,3,4,5,6,7,8,9,10}
	CARTON = {1,0,0,3,0,5,0,7,8,0}
	// imprimir ("Introduce el codigo del carton")
	// leer(cod)
	
	desde k = 1 hasta 10
	{
		i = i + 1
		j = j + 1
		si (CARTON[i] == SORTEO[j])
		{
			contador = contador + 1
			si (contador == 15)
			{
				imprimir("ganador")
			}
		}
	}
fin 