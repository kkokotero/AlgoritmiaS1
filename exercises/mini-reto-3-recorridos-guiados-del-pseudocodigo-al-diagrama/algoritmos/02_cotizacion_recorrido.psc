Algoritmo CotizacionRecorrido
	Definir NombreRecorrido Como Caracter
	Definir CantidadPersonas Como Entero
	Definir PrecioPorPersona, TotalGrupo, PorcentajeAnticipo, Anticipo, SaldoPendiente Como Real

	Escribir "¿Qué recorrido desea cotizar?"
	Leer NombreRecorrido

	Escribir "¿Cuál es el precio por persona?"
	Leer PrecioPorPersona

	Escribir "¿Cuántas personas participarán?"
	Leer CantidadPersonas

	TotalGrupo <- PrecioPorPersona * CantidadPersonas
	PorcentajeAnticipo <- 0.30
	Anticipo <- Redon(TotalGrupo * PorcentajeAnticipo)
	SaldoPendiente <- TotalGrupo - Anticipo

	Escribir "Recorrido: ", NombreRecorrido
	Escribir "Valor total para el grupo: $", TotalGrupo, " COP"
	Escribir "Anticipo del 30 %: $", Anticipo, " COP"
	Escribir "Saldo pendiente para el día del recorrido: $", SaldoPendiente, " COP"
FinAlgoritmo
