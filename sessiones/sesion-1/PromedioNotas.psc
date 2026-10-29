Algoritmo PromedioNotas
	Definir Cantidad, Index Como Entero
	Definir Notas, Suma, Promed Como Real
	
	Escribir "¿Cuantas notas desea ingresar?"
    Leer Cantidad
	
	Si Cantidad > 0 Entonces
		Dimension Notas[Cantidad]
		Suma <- 0
		
		Para Index <- 1 Hasta Cantidad Hacer
			Escribir "Ingrese la nota ", Index, ":"
			Leer Notas[Index]
			
			Suma <- Suma + Notas[Index]
		Fin Para
		
		Promed <- Suma / Cantidad
		
		Escribir "El promedio de las notas es: ", Promed
	SiNo
		Escribir "Debe ingresar al menos una nota."
	Fin Si
FinAlgoritmo
