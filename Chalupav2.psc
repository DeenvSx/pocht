Algoritmo chalupa
	definir operacion como real
	definir suma Como Real
	definir numero1 Como Real
	definir numero2 como real
	definir numero3 Como Real
	definir resta como real
	definir division Como Real
	definir multiplicacion como real
	definir figura Como Real
	definir cuadrado Como Real
	definir trapecio como real
	definir altura Como Real
	definir menu Como Real
	
	
	
	escribir "calculadora"
	escribir "1 para calculadora de operaciones"
	escribir "2 para calculadora de áreas"
	escribir "3 para sucesion de fibonacci"
	escribir "4 para estadística básica"
	leer menu
	según menu hacer
1 :  menu <- 1
	
		escribir"1 para suma"
		escribir"2 para resta"
		escribir"3 para multiplicacion"	
		escribir"4 para division"
		leer operacion
		Segun operacion Hacer
			
			1:
				operacion <- 1
				
				escribir "introduce números"
				leer numero1
				leer numero2
				suma <- numero2 + numero1
				Escribir suma
				
			2:
				operacion <- 2
				
				escribir "introduce números"
				leer numero1
				leer numero2
				resta <- numero1 - numero2
				Escribir resta
				
				
			3:
				operacion <- 3
				
				escribir "introduce números"
				leer numero1
				leer numero2
				multiplicacion <- numero2 * numero1
				Escribir multiplicacion
				
			4:
				
				escribir "introduce números"
				leer numero1
				leer numero2
				division <- numero1 / numero2
				Escribir division
		FinSegun
	2:
		menu <- 2
		escribir "elige que figura"
		escribir"1 para cuadrado"
		escribir"2 para triangulo"
		escribir"3 para circulo"
		escribir"4 para trapecio"
		leer figura
		Segun figura hacer
			1:escribir "introduce base y altura"
				leer numero1
				leer numero2
				multiplicacion <- numero1 * numero2
				Escribir multiplicacion
				
			2:escribir "introduce base y altura"
				leer numero1
				leer numero2
				division <- numero1 * numero2
				Escribir division/2	
				
			3:
				escribir "introduce radio"
				leer numero1
				cuadrado <- numero1 * numero1
				circulo <- 3.1415 * cuadrado
				Escribir circulo
				
			4:
				escribir "introduce bases y altura"
				leer numero1
				leer numero2
				leer numero3
				suma <- numero1 + numero2
				altura <- numero3 /2
				trapecio <- suma * altura
				Escribir trapecio
				
		FinSegun
				
		
		
	3:
		menu <- 3
		escribir "elige el número con el cual empezar"
		leer numero1
		escribir "cuántos digitos deseas ver?"
		leer número2
		Definir i, a, b, c Como Entero
		a <- numero1
		b <- numero1
		para i<-1 hasta numero2 hacer
			escribir a
			c<-a+b
			a<-b
			b<-c
		FinPara
	4:
		menu <- 4
		escribir "estadística básica"
		escribir "1 para media"
		escribir "2 para moda"
		escribir "3 para mediana"
		leer operacion
		según operacion hacer 

		
			1:
				operacion <- 1
				
				escribir "cuantos numeros son"
				leer numero1
				escribir "inserta los números"
				para i<-1 hasta numero1 Con Paso 1 hacer
					leer numero2
					numero3 <- numero3 + numero2
				FinPara
				numero3 <- numero3 / numero1
				escribir "el promedio es " numero3
			2:
				operacion <- 2
				Definir n, i, j Como Entero
				Definir moda, maxFrecuencia, frecuenciaActual Como Entero
				
				
				Escribir "Cuantos numeros va a ingresar?"
				Leer n
				
				
				Dimension numeros[n]
				
				
				Escribir "Ingrese los ", n, " numeros (pueden ser repetidos):"
				Para i <- 1 Hasta n Con Paso 1 Hacer
					Escribir "Numero ", i, ":"
					Leer numeros[i]
				FinPara
				
				
				maxFrecuencia <- 0
				
				moda <- numeros[1] 
				
				
				Para i <- 1 Hasta n Con Paso 1 Hacer
					
					frecuenciaActual <- 0
					
					Para j <- 1 Hasta n Con Paso 1 Hacer
						
						Si numeros[i] == numeros[j] Entonces
							frecuenciaActual <- frecuenciaActual + 1
						FinSi
						
					FinPara
					Si frecuenciaActual > maxFrecuencia Entonces
						maxFrecuencia <- frecuenciaActual
						moda <- numeros[i]
					FinSi
					
				FinPara
				Si maxFrecuencia == 1 Entonces
					Escribir "No hay moda"
				Sino
					Escribir "La moda es: " moda
					Escribir "Aparecio " maxFrecuencia "veces"
    FinSi
				
			3: 	
				operacion <- 3
					Definir n, i, j, aux Como Entero
					Definir mediana Como Real
					
					Escribir "Cuantos numeros vas a ingresar"
					Leer n
					Si n <= 0 Entonces
						Escribir "error: La cantidad debe ser positiva."
					Sino
						Dimension numeros[n]
						Escribir "ingrese los ", n, " numeros"
						Para i <- 1 Hasta n Con Paso 1 Hacer
							Leer numeros[i]
						FinPara
						Para i <- 1 Hasta n-1 Con Paso 1 Hacer
							Para j <- 1 Hasta n-i Con Paso 1 Hacer
								
								Si numeros[j] > numeros[j+1] Entonces
									aux <- numeros[j]
									numeros[j] <- numeros[j+1]
									numeros[j+1] <- aux
								FinSi
								
							FinPara
						FinPara
						
						Escribir "Los numeros ordenados son"
						Para i <- 1 Hasta n Con Paso 1 Hacer
							Escribir sin saltar numeros[i], " "
						FinPara
						Escribir "" 
						
						Si n MOD 2 == 0 Entonces
							Definir pos1, pos2 Como Entero
							pos1 <- n / 2
							pos2 <- (n / 2) + 1
							
							mediana <- (numeros[pos1] + numeros[pos2]) / 2
							
						Sino
							Definir posCentral Como Entero
							posCentral <- (n + 1) / 2
							
							mediana <- numeros[posCentral]
						FinSi
						
						Escribir "La mediana del conjunto es: ", mediana
						
					FinSi
					

			

		FinSegun

FinSegun

			
FinAlgoritmo
