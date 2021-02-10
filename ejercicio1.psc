Algoritmo ejercicio1
	Definir numBuscar,n Como Entero
	Definir nEncontrado Como Logico
	n <- 0
	Escribir 'Ingrese el tamaño del vector'
	Leer n
	Dimension vector[n]
	Escribir 'Ingrese los valores del vector'
	Para i<-0 Hasta n-1 Hacer
		Escribir 'Ingrese el elemento A [',i,']:'
		Leer vector[i]
	FinPara
	Escribir 'Ingresar el numero que desea verificar si se encuentra en el vector ingresado anteriormente'
	Leer numBuscar
	Si (n>=10) Entonces
		Para i<-0 Hasta 10-1 Hacer
			Si (vector[i]==numBuscar) Entonces
				nEncontrado <- Verdadero
				posicion <- i
				Si nEncontrado==Verdadero Entonces
					Escribir 'El numero ',numBuscar,' si se encuentra en el vector, en la posicion ',posicion
				SiNo
					Escribir 'El numero ',numBuscar,' no se encuentra en el vector'
				FinSi
			FinSi
		FinPara
	SiNo
		Para i<-0 Hasta n-1 Hacer
			Si vector[i]==numBuscar Entonces
				nEncontrado <- Verdadero
				posicion <- i
				Si (nEncontrado==Verdadero) Entonces
					Escribir 'El numero ',numBuscar,' si se encuentra en el vector, en la posicion ',posicion
				SiNo
					Escribir 'El numero ',numBuscar,' no se encuentra en el vector'
				FinSi
			FinSi
		FinPara
	FinSi
FinAlgoritmo
