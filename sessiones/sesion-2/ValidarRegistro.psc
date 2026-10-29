Algoritmo ValidarRegistro
	Definir Edad Como Entero
	Definir Respuesta Como Cadena
	
	Escribir '¿Cuantos años tienes?'
	Leer Edad
	
	Escribir '¿Aceptas los terminos? (S/N)'
	Leer Respuesta
	Respuesta <- Mayusculas(Respuesta)
	
	Si Edad >=14 Y Respuesta='S' Entonces
		Escribir 'Registro Exitoso'
	SiNo
		Escribir 'No puedes Registrarte'
	FinSi
FinAlgoritmo
