Algoritmo HallarInversiones
	
	// Tres personas deciden invertir su dinero para fundar una empresa. Cada una de ellas invierte una cantidad distinta. Obtener el porcentaje que cada quien invierte con respecto 
	// a la cantidad total invertida ;
	
	Definir  empresario1 , empresario2 , empresario3 , cantidadtotalinvertida Como Real;
	
	Escribir "Empresario #1 Inversión";
	Leer empresario1;
	
	Escribir "Empresario #2 Inversión";
	Leer empresario2;
	
	Escribir "Empresario #3 Inversión";
	Leer empresario3;
	
	cantidadtotalinvertida= empresario1 + empresario2 + empresario3;
	
	Escribir "La cantidad total en pesos es  ", cantidadtotalinvertida; 
	
	Escribir "El porcentaje invertido por el empresario#1 es: ",(empresario1 / cantidadtotalinvertida ) * 100, "%";
	Escribir "El porcentaje invertido por el empresario#2 es: ", (empresario2 / cantidadtotalinvertida ) * 100, "%";
	Escribir "El porcentaje invertido por el empresario#3 es:  ",(empresario3 / cantidadtotalinvertida ) * 100 "%";
	
	
	
	
	
FinAlgoritmo
