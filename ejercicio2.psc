Algoritmo ejercicio2
	Definir primoMayor, repetidor, may Como Entero
	Dimension matrizA(4,6)
	Dimension matrizB(4,6)
	primoMayor = 0
	repetidor = 0 
	
	Imprimir("Ingresar los valores de la matriz A")
	Para  i <- 0 Hasta 4 - 1 con paso 1 hacer;
		Para  j <- 0 Hasta 6 - 1 con paso 1 hacer;
			Escribir Sin Saltar"Ingresar el elemento matrizA [ " , i "] [" , j "]";
			Leer matrizA[i, j];
		Fin para
	Fin para
	
	Imprimir("Ingresar los valores de la matriz B")
	Para  i <- 0 Hasta 4 - 1 con paso 1 hacer;
		Para  j <- 0 Hasta 6 - 1 con paso 1 hacer;
			Escribir Sin Saltar"Ingresar el elemento matrizB [ " , i "] [" , j "]";
			Leer matrizB[i, j];
		Fin para
	Fin para

	Escribir "MATRIZ A";
	Para  i <- 0 Hasta 4 - 1 con paso 1 hacer;
		Escribir ""; 
		Para  j <- 0 Hasta 6 - 1 con paso 1 hacer;
			Escribir sin saltar matrizA[i , j] "  " ;
		FinPara
	FinPara
	Escribir " ";
	
	Escribir "MATRIZ B";
	Para  i <- 0 Hasta 4 - 1 con paso 1 hacer;
		Escribir ""; 
		Para  j <- 0 Hasta 6 - 1 con paso 1 hacer;
			Escribir sin saltar matrizB[i , j] "  " ;
		FinPara
	FinPara
	Escribir " ";	

	Para i = 0 Hasta 4 - 1 Con Paso 1 Hacer
		Para j = 0 Hasta 6 - 1 Con Paso 1 Hacer
			Si (ComprobarPrimo(matrizA[i,j])) Entonces
				may = matrizA[i, j]
				Para k = 0 Hasta 4 - 1 Con Paso 1 Hacer
					Para l = 0 Hasta 6 - 1 Con Paso 1 Hacer
						actual = matrizA[k, l]
						Si (ComprobarPrimo(actual)) Entonces
							Si (actual > may) Entonces
								may = actual
							FinSi
						FinSi
					FinPara
				FinPara	
				primoMayor = may
			FinSi
		FinPara
	FinPara
	Para i = 0 Hasta 4 - 1 Con Paso 1 Entonces
		Para j = 0 Hasta 6 - 1 Con Paso 1 Entonces
			Si(primoMayor == matrizB[i,j]) Entonces
				repetidor = repetidor + 1
			FinSi
		FinPara
	FinPara
	Imprimir "El numero primo ",primoMayor," de la primera matriz se repite ",repetidor," veces en la segunda matriz"
FinAlgoritmo

SubProceso res <- ComprobarPrimo(number)
	Definir valido como Logico
	Definir cont Como Entero
	cont = 0
	valido = Falso
	
	Para i = 1 Hasta number + 1 Hacer
		Si (number % i == 0) Entonces
			cont = cont + 1
		FinSi
	FinPara
	
	Si cont == 2 Entonces
		valido = Verdadero
	FinSi
	res = valido
FinSubProceso
