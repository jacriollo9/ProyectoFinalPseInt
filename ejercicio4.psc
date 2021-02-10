Algoritmo ejercicio4
	Definir tamanio Como Entero
	Imprimir "Ingresar el tamaño de la matriz: "
	Leer tamanio
	Dimension matriz(tamanio, tamanio)
	Para i = 0 Hasta tamanio - 1 Con Paso 1 Hacer
		Para j = 0 Hasta tamanio - 1 Con Paso 1 Hacer
			Imprimir "Ingresar el elemento de la posicion [",i,"][" ,j, "]: "
			Leer matriz[i,j]
		FinPara
	FinPara
	Imprimir "MATRIZ INGRESADA"
	Para i = 0 Hasta tamanio - 1 Con Paso 1 Hacer
		Para j = 0 Hasta tamanio - 1 Con Paso 1 Hacer
			Imprimir  matriz[i,j] + " " Sin Saltar
		FinPara
		Imprimir ""
	FinPara
	Definir pSilla Como Entero
	pSilla = encontrarPuntoSilla(matriz, tamanio)
	Imprimir "La matriz tiene ",pSilla," puntos de silla en total"
	Imprimir ""
FinAlgoritmo
SubProceso return <- encontrarPuntoSilla(matriz, tamanio)
	Definir numSillas Como Entero
	numSillas = 0
	Dimension may(tamanio)
	Dimension men(tamanio)
	Para i = 0 Hasta tamanio - 1 Con Paso 1 Hacer
		men[i] = matriz[i,0]
		Para j = 0 Hasta tamanio - 1 Con Paso 1 Hacer
			Si (i == 0) Entonces
				may[j] = matriz[i,j]
			SiNo
				Si may[j] < matriz[i,j] Entonces
					may[j] = matriz[i,j]
					Si men[i] > matriz[i,j] Entonces
						men[i] = matriz[i,j]
					FinSi
					Si may[i] == men[j] Entonces
						numSillas = numSillas + 1
						Imprimir "Se encontro en la posicion: (",(i+1),",",(j+1),")"
					FinSi
				FinSi
			FinSi
		FinPara
	FinPara
	return = numSillas
FinSubProceso