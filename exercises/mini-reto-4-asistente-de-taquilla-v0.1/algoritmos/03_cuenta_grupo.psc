Algoritmo CuentaGrupo
	Definir CantidadBicicletas, HorasAlquiler, CantidadPersonas Como Entero
	Definir PrecioPorPersonaRecorrido Como Entero
	Definir PrecioPorHoraBicicleta, PorcentajeAporte Como Real
	Definir ValorAlquiler, ValorRecorrido, Subtotal, AporteVoluntario Como Real
	Definir TotalGrupo, ValorExactoPorPersona, ValorPorPersona Como Real

	PrecioPorHoraBicicleta <- 10000
	PorcentajeAporte <- 0.10

	Escribir "¿Cuántas bicicletas urbanas se alquilarán?"
	Leer CantidadBicicletas

	Escribir "¿Cuántas horas durará el alquiler?"
	Leer HorasAlquiler

	Escribir "¿Cuál es el precio del recorrido por persona?"
	Leer PrecioPorPersonaRecorrido

	Escribir "¿Cuántas personas hay en el grupo?"
	Leer CantidadPersonas

	ValorAlquiler <- CantidadBicicletas * HorasAlquiler * PrecioPorHoraBicicleta
	ValorRecorrido <- PrecioPorPersonaRecorrido * CantidadPersonas
	Subtotal <- ValorAlquiler + ValorRecorrido
	AporteVoluntario <- Subtotal * PorcentajeAporte
	TotalGrupo <- Subtotal + AporteVoluntario
	ValorExactoPorPersona <- TotalGrupo / CantidadPersonas
	ValorPorPersona <- Trunc((TotalGrupo + CantidadPersonas * 100 - 1) / (CantidadPersonas * 100)) * 100

	Escribir "Cantidad de bicicletas: ", CantidadBicicletas
	Escribir "Horas de alquiler: ", HorasAlquiler
	Escribir "Personas en el grupo: ", CantidadPersonas
	Escribir "Valor del alquiler: $", ValorAlquiler, " COP"
	Escribir "Valor del recorrido: $", ValorRecorrido, " COP"
	Escribir "Subtotal: $", Subtotal, " COP"
	Escribir "Aporte voluntario del 10 %: $", AporteVoluntario, " COP"
	Escribir "Total del grupo: $", TotalGrupo, " COP"
	Escribir "Valor exacto por persona: $", ValorExactoPorPersona, " COP"
	Escribir "Valor por persona, redondeado a la centena: $", ValorPorPersona, " COP"
FinAlgoritmo
