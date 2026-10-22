Algoritmo Propinas
	Definir Personas Como Entero
	Definir Cuenta, Propina, Total, TotalPorPersona Como Real
	
	Escribir "¿Cuanto es el valor de la cuenta?: "
	Leer Cuenta
	
	Escribir "¿Cuantas personas son?: "
	Leer Personas
	
	Escribir  "¿Cuanto es el porcentaje de propina? (e.j. 20): "
	Leer Propina
	
	Si Personas > 0 Entonces
		Si Cuenta > 0 Entonces
			Si Propina >= 0 Entonces
				Si Propina > 1 Entonces
					Propina <- Propina / 100
				FinSi
			
				Total <- Cuenta + (Cuenta * Propina)
				TotalPorPersona <- Total / Personas
				
				Escribir "El valor total a pagar es de $", Total, "COP"
				Escribir "EL valor que cada uno debe pagar es de $", TotalPorPersona, "COP"
			SiNo
				Escribir "El porcentaje de propinas no puede ser negativo"
			FinSi
		SiNo 
			Escribir "No hay que pagar nada"
		FinSi
	SiNo
		Escribir "No hay a quien cobrarle"
	Fin Si
FinAlgoritmo
