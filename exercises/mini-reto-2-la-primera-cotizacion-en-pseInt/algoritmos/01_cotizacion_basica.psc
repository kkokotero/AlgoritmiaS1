Algoritmo CotizacionBasica
	Definir NombreCliente Como Caracter
	Definir HorasAlquiler Como Entero
	Definir PrecioPorHora, TotalAPagar Como Real

	PrecioPorHora <- 10000

	Escribir "¿Cómo se llama el cliente?"
	Leer NombreCliente

	Escribir "¿Cuántas horas alquilará la bicicleta?"
	Leer HorasAlquiler

	TotalAPagar <- HorasAlquiler * PrecioPorHora

	Escribir "Hola, ", NombreCliente, ": recibimos tu solicitud de alquiler."
	Escribir "Horas de alquiler: ", HorasAlquiler
	Escribir "Total a pagar: $", TotalAPagar
	Escribir "¡Gracias por elegir Rueda Libre!"
FinAlgoritmo