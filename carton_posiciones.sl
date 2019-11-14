var
	CARTON:matriz[3,9]numerico
	i, j, posi1, posi2, posi_impar: numerico
inicio
	cls()
	
	//DEFINIR POSICIONES
	
	desde i = 1 hasta 1
	{
		desde j = 1 hasta 9
		{
			
			si(j%2==0) //para las columnas pares (2 numeros)
			{
				//donde estara el 0
				posi1 = random(3)
				CARTON[i + posi1,j] = 1
				imprimir("posi1: ",posi1)
				
				posi2 = random(3)
				mientras(posi2 == posi1) //posi 2 no debe tener el valor de posi 1
				{
					posi2 = random(3)
				}
				CARTON[i + posi2, j] = 1
				imprimir("posi2: ",posi2)
			
			
			sino //para las columnas impares (1 numero)
				posi_impar = random(3)
				CARTON[i + posi_impar, j] = 1
				imprimir("posi_impar: ",posi_impar,"\n")
			}
		}
	}

	desde i = 1 hasta 3
	{
		desde j = 1 hasta 9
		{
			imprimir(CARTON[i,j])
		}
		imprimir("\n")
	}



fin 