Algoritmo Semaforo
	Definir Unidades Como Entero
	
	Escribir "¿Cuantas unidades vas a pedir?"
	Leer Unidades
	
	Si Unidades < 0 Entonces
		Escribir "Error"
	SiNo
		Si Unidades = 0 Entonces
			Escribir "Agotado"
		SiNo
			Si Unidades > 0 Y Unidades <= 10 Entonces
				Escribir "Pedir"
			SiNo
				Escribir "Todo Bien!"
			FinSi
		FinSi
	FinSi
	
FinAlgoritmo
