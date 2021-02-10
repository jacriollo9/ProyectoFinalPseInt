Proceso Ejercicio3
	Definir long, contador, digito, i, vector Como Entero
	Definir TerminaEn Como Logico
	
	Dimension vector(10)
	
	Escribir "Ingrese el dígito a analizar: "
	Leer digito
	
	contador = 0
	TerminaEn = Falso
	
	
	Escribir "Ingrese los valores del vector: "
	Para i = 1 Hasta 10 Con Paso 1 Hacer
		Escribir "Ingrese el ", i, " valor"
		Leer vector[i-1]
		Si ComprobarDigito(vector[i - 1], digito) Entonces
			contador = contador + 1
		FinSi
	FinPara
	
	Escribir "El digito ", digito, " se repite " ,contador, " veces en el vector, en las posiciones: "
	
	Para i = 1 Hasta 10 Con Paso 1 Hacer
		Si ComprobarDigito(vector[i - 1], digito) Entonces
			Escribir i , " , " Sin Saltar
		FinSi
	FinPara
FinProceso

SubProceso res <- ComprobarDigito(num, digito)
	
	definir res Como logico
	Si (num % 10 == digito) Entonces		
		res = Verdadero
	FinSi
	
FinSubProceso