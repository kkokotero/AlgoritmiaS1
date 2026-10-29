Algoritmo Parqueadero
    Definir Hora, Minuto, CobroBase, CobroTotal Como Entero
    Definir Vehiculo, Factura Como Caracter
	
    CobroBase <- 0
    CobroTotal <- 0
	
    Escribir "�Que vehiculo es? (Carro/Moto):"
    Leer Vehiculo
    Vehiculo <- Minusculas(Vehiculo)
	
    Escribir "�Cuantas horas estuviste parqueado?"
    Leer Hora
	
    Escribir "�Cuantos minutos adicionales estuviste?"
    Leer Minuto
	
	Escribir "�Tienes factura del centro comercial? (S/N)"
	Leer Factura
    Factura <- Minusculas(Factura)
	
    Si Vehiculo = "moto" Entonces
        CobroBase <- 2000
    SiNo
        Si Vehiculo = "carro" Entonces
            CobroBase <- 4000
        SiNo
            Escribir "Error: vehiculo no reconocido"
        FinSi
    FinSi
	
	Si Factura <> "s" Y Factura <> "n" Entonces
		Escribir "Error: factura no reconocida"
		CobroBase <- 0
	FinSi
	
    Si CobroBase > 0 Entonces
        Si Hora < 0 O Minuto < 0 Entonces
            Escribir "Error: el tiempo no puede ser negativo"
        SiNo
            // Convertir minutos adicionales en horas
            Mientras Minuto >= 60 Hacer
                Minuto <- Minuto - 60
                Hora <- Hora + 1
            FinMientras
			
            // Calcular el cobro
            Si Hora = 0 Y Minuto <= 15 Entonces
                CobroTotal <- 0
            SiNo
                Si Minuto > 0 Entonces
                    Hora <- Hora + 1
                FinSi
				
                CobroTotal <- Hora * CobroBase
				
                Si CobroTotal > 30000 Entonces
                    CobroTotal <- 30000
                FinSi
            FinSi
			
			Si Factura = "s" Entonces
				CobroTotal <- CobroTotal / 2
			FinSi
			
            Escribir "Tiempo: ", Hora, " horas y ", Minuto, " minutos"
            Escribir "Total a pagar: $", CobroTotal
        FinSi
    FinSi
FinAlgoritmo
