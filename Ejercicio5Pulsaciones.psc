Algoritmo TareaPulsaciones
	
	Definir n, edad Como Entero
	Definir Pulsaciones Como Real
	
	Escribir "Escribir edad"
	Leer edad
	
	Escribir "Escirbe un numero de acuerdo a tu genero"
	Escribir "1 = sexo femenino"
	Escribir "2 = sexo masculino"
	Leer n
	
	
	Si n == 1 Entonces
		Pulsaciones = (220 - edad)/10
	SiNo
		si n == 2 Entonces
			Pulsaciones =(210 - edad)/10
			
		SiNo
			Escribir "Escribe un numero correcto"
			
		FinSi
		
	FinSi
	Escribir "El numero de pulsaciones de acuerdo a tu edad es: ",Pulsaciones
FinAlgoritmo
