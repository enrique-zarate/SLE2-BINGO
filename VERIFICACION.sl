	// VERIFICAR (SORTEO [cont],cont)
	
	var
		CARTON: vector [10] numerico
		SORTEO: vector [10] numerico
		k,i,j,contador: numerico
	inicio
		cls()
		SORTEO = {1,2,3,4,5,6,7,8,9,10}
		CARTON = {11,0,0,31,0,51,0,71,81,0}
		// imprimir ("Introduce el codigo del carton")
		// leer(cod)
		
		desde i = 1 hasta 10
		{
			desde j = 1 hasta 10
			{
				si (CARTON[i] == SORTEO[j])
				{
					contador = contador + 1
				}	
			}
		}
	
		si (contador == 5)
		{
			imprimir("ganador")
		}
	fin 