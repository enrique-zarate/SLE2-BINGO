tipos
	boletas:registro{
		nom:cadena
		car:matriz[3,9]numerico
		codi:numerico
	}

const 
	COLOR_crema: 6
	COLOR_blanco: 10
	COLOR_negro:1

var
	c, opcion_sorteo, opcion,cantidad_jugadores, i, cantidad_boletas,codd: numerico 
	nombre_jugador, continuar:cadena

inicio
	cls()
	continuar = "si"
	mientras (continuar == "si")
	{
		cls()
		set_curpos (1,30)
		imprimir("BINGO DIGITAL \n")
		set_curpos (2,29)
		imprimir("MENU PRINCIPAL \n")
		imprimir("1. GENERAR BOLETO \n")
		imprimir("2. SORTEO \n")
		imprimir("3. NUEVA SESIÓN \n")
		imprimir("4. SALIR \n")
		imprimir("Elige una de las opciones: 1,2,3,4:")
		leer(opcion)
		
		mientras(opcion<1 or opcion>3) //valida
		{
			leer(opcion)
		}
		
		eval			// opciones ingresadas por el usuario
		{
			caso (opcion == 1)
				cls()
				set_curpos (1,30)
				imprimir("BINGO DIGITAL \n")
				set_curpos (2,29)
				imprimir("GENERAR BOLETOS \n")
				set_curpos(5,17)
				imprimir("INGRESE CANTIDAD DE JUGADORES: ")
				leer(cantidad_jugadores)
				
				mientras (cantidad_jugadores <> 0)
				{
					//generaboleta(nombre_jugador)
					
					/*cls()    	
					
					poner dentro de generar boleta
					
					desde i = 1 hasta cantidad_jugadores
					{
						set_curpos (1,30)
						imprimir("BINGO DIGITAL \n")
						set_curpos (2,29)
						imprimir("GENERAR BOLETO \n")
						
						set_curpos (15,18)				
						imprimir("INGRESE EL NOMBRE DEL JUGADOR: ")
						leer(nombre_jugador)
						
						set_curpos (16,18)
						imprimir("INGRESE CANTIDAD DE BOLETAS: ") 
						leer(cantidad_boletas)
						
						
					}
					*/			
				}
				
			caso (opcion == 2)
				cls()
				set_curpos (1,30)
				imprimir("BINGO DIGITAL \n")
				set_curpos (2,33)
				imprimir("SORTEO \n")
				set_curpos (4,25)
				
				//SORTEO()
				
				
			caso (opcion == 3) //NUEVA SESION
				cls()
				continuar = "si"
				
				
			caso (opcion == 4)
				cls()
				imprimir("Gracias por jugar")
				continuar = "no"
		}
	}
fin
/*---------------------------------------------------------------------*/


/*---------------------------------------------------------------------*/
// Sub Programas - Funciones - Sub Rutinas
/*---------------------------------------------------------------------*/

/*
subrutina generaboleta (nombre:cadena)
var
	BOLETAS: vector [*] boletas
	CARTON:matriz[3,9]numerico
	aux,aux2,i,j,n,contcero,contnum,lin,esp,p:numerico
	cod: numerico

inicio
	set_color(COLOR_negro,COLOR_negro)
	cls()
	cod = 1
	n=0
	lin=5
	esp=16
	set_color(COLOR_blanco,COLOR_crema)

	desde i=1 hasta 3
	{
		desde j=1 hasta 9
		{
			si(i==3)
			{
				si(CARTON[i-1,j]==0 and CARTON[i-2,j]==0)
				{
					CARTON[i,j]=generarnumero(j)
					contnum=contnum+1
				sino
					aux=random(2)
					si(aux==0 and contcero<4)
					{
						CARTON[i,j]=0
						contcero=contcero+1
					sino
						si(contnum<5)
						{
							CARTON[i,j]=generarnumero(j)
							mientras(CARTON[i-1,j]==CARTON[i,j] or CARTON[i-2,j]==CARTON[i,j])
							{
								CARTON[i,j]=generarnumero(j)
							}
							contnum=contnum+1
						}
					}
				}
			sino
				aux=random(2)
				si(aux==0 and contcero<4)
				{
					CARTON[i,j]=0
					contcero=contcero+1
				sino
					si(contnum<5)
					{
						CARTON[i,j]=generarnumero(j)
						si(i>1)
						{
							mientras(CARTON[i-1,j]==CARTON[i,j])
							{
								CARTON[i,j]=generarnumero(j)
							}
						}
						contnum=contnum+1
					}
				}
			}
		}
		contnum=0
		contcero=0
	}
		
	set_curpos(2,16)
	imprimir("------------------------------------------------------")
	set_curpos(3,16)
	imprimir("             ",nombre,"\t  ",str(cod),"               ")
	set_curpos(4,16)
	imprimir("------------------------------------------------------")
		
	desde i=1 hasta 3//impresion
	{
		imprimir("\n")
		set_curpos(lin,esp)
		desde j=1 hasta 9
		{
			si(j==1 or CARTON[i,j]<10)
			{
				imprimir("  0",CARTON[i,j],"  ")
			sino
				imprimir("  ",CARTON[i,j],"  ")
			}
		}
		imprimir("\n")
		lin=lin+2
	}
		
	set_curpos(6,16)
	imprimir("------------------------------------------------------")
	set_curpos(8,16)
	imprimir("------------------------------------------------------")
	set_curpos(10,16)
	imprimir("------------------------------------------------------")
		
	desde i=1 hasta p
	{
		BOLETAS[i].car=CARTON
		BOLETAS[i].nom=nombre
		BOLETAS[i].codi=cod
	}

	
fin

//--------------------------------------------------------------------------

sub generarnumero(k:numerico)retorna numerico
var
aux3:numerico
inicio
	aux3=random(10)+((k-1)*10)
	mientras(k==1 and aux3==0)
	{
		aux3=random(10)+((k-1)*10)
	}
	retorna(aux3)
fin

//-------------------------------------------------------------------------

*/

/*subrutina SORTEO()

var
	num_sorteo, cont,i, j: numerico
	SORTEO: vector[90] numerico
inicio
	cls()
	
	imprimir("NUMERO ACTUAL:", c)
	set_curpos (6,25)
	imprimir("NUMEROS ANTERIORES:")
	Imprimir_Anterior()
	
	set_curpos(20,1)
	imprimir("Escoja una de las opciones:")
	set_curpos (21,1)
	imprimir(" 1- Obtener el siguiente numero,")
	set_curpos (22,1) 
	imprimir(" 2- Varificar ganador(es),")
	set_curpos (23,1)
	imprimir(" 3-Fin de seccion \n")
	leer(opcion_sorteo)
	
	mientras (opcion_sorteo > 0 and opcion_sorteo <4)
	{
		leer (opcion_sorteo)
	}	

	eval
	{
		caso (opcion_sorteo == 1)
			cls()
			imprimir("NUMERO SORTEADO") 
			cont = 1
			num_sorteo = random(89)
				
			desde j = 1 hasta cont
			{
				si(num_sorteo <> SORTEO[j])
					{
					SORTEO [cont] = num_sorteo
					cont = cont + 1
				}
			}
			imprimir(num_sorteo, "\n")
			
		caso (opcion_sorteo == 2)
			cls()
			imprimir("verificar ganador") 
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
			
		caso (opcion_sorteo == 3)
			cls()
			imprimir("fin de sesión")
			// subprograma
			
	}


	



	Imprime_anterior(num_sorteo, SORTEO)

fin


subrutina Imprime_anterior (aux:numerico ;ref SORTEO: vector [90] numerico)

var
	k, j, i, cont: numerico
	CARTON: matriz[9, 10]numerico

inicio
	cont, cont2, cont3, cont4, cont5, cont6, cont7, cont8, cont9 = 1

	desde i=1 hasta 3
	{
		desde j=1 hasta 9
		{
			eval
			{
				caso(aux<=9)
					CARTON[cont,1]=aux
					cont = cont + 1
					
				caso(aux<=19)
					CARTON[i,2]=aux
					cont2 = cont2 + 1
					
				caso(aux<=29)
					CARTON[i,3]=aux		
					cont3 = cont3 + 1
					
				caso(aux<=39)
					CARTON[i,4]=aux
					cont4 = cont4 + 1
					
				caso(aux<=49)
					CARTON[i,5]=aux
					cont5 = cont5 + 1
					
				caso(aux<=59)
					CARTON[i,6]=aux
					cont6 = cont6 + 1
					
				caso(aux<=69)
					CARTON[i,7]=aux
					cont7 = cont7 + 1
					
				caso(aux<=79)
					CARTON[i,8]=aux
					cont8 = cont8 + 1
					
				caso(aux<=89)
					CARTON[i,9]=aux
					cont9 = cont9 + 1
			}
		}
	}


	desde i=1 hasta 3
	{
		desde j=1 hasta 9
		{
			imprimir(CARTON[i,j])
		}
		imprimir("\n")
	}

fin 

*/