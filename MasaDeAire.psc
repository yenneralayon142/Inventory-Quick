Algoritmo MasaDeAire
	Definir masa, volumen, presion, temperatura Como Real
	Escribir "INGRESE EL VOLUMEN"
	Leer volumen 
	Escribir "INGRESE EL PRESION"
	Leer presion
	Escribir "INGRESE LA TEMPERATURA"
	Leer temperatura
	masa = (presion*volumen)/(0.37*(temperatura+460))
	
	Escribir "LA MASA ES: ", masa;
FinAlgoritmo
