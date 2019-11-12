/*  determinar si existen dos filas iguales  */

var
	A: matriz[*,*]numerico
	AUX: vector[*]numerico
	m, n, k, i, j, contador, salida: numerico
inicio
	cls()
	
	imprimir("Filas: ")
	leer(m)

	imprimir("Columnas: ")
	leer(n)

	dim(A, m, n)

	desde i=1 hasta m
	{
		desde j=1 hasta n
		{
			imprimir("Para la fila ", i, ", columna ",j, "\n")
			leer(A[i, j])
		}
	}

	/*dimensionar vector de comparacion*/

	dim(AUX, m)
	
	k = 1 //inicializar la fila  

	mientras(salida == 0)
	{
		desde j = 1 hasta n
		{
			AUX[j] = A[k, j]
		} 
		
		/*	 COMPARACION 	*/
		
		desde i = 1 hasta m
		{
			desde j = 1 hasta n
			{
				si(AUX[j] == A[i, j])
				{
					contador = contador + 1
				}
				si(contador == m)
				{
					salida = 1
				}
			}
		}
		k = k + 1		//cambio de fila
		contador = 0 	// para la cantidad de elementos iguales encontrados
		
		si(k==m)
		{
			salida = 1		//si no hay filas iguales, sale del mientras
		}
	}


	// imprimir si hay dos filas iguales
	si(contador == m)
	{
		imprimir("Hay ", contador, " filas iguales")
	sino
		imprimir("No hay filas iguales")
	}

fin 






