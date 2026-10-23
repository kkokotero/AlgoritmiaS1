# Bitácora — MiniReto 2 · La primera cotización en PSeInt

**Proyecto:** Rueda Libre, alquiler de bicicletas  
**Trabajo individual**

---

## 1. El cobro que quiero automatizar

En el primer reto escribí el proceso de alquiler paso a paso. Ahora tomo una
parte pequeña de ese proceso y la convierto en mi primer algoritmo ejecutable en
PSeInt: calcular cuánto cuesta alquilar una bicicleta urbana por horas.

El precio es de **$10.000 por hora**. El casco y el candado ya están incluidos,
así que no se suman al valor. La persona de taquilla solo tiene que escribir el
nombre del cliente y cuántas horas alquilará la bicicleta.

## 2. Entrada, proceso y salida

| Entrada: qué dato leo y de qué tipo | Proceso: qué cálculo hago | Salida: qué le muestro al cliente |
|---|---|---|
| El nombre del cliente, como `Caracter`. | Multiplico las horas por el precio por hora, guardado en `PrecioPorHora`. | Un saludo con el nombre, las horas del alquiler y el total que debe pagar. |
| La cantidad de horas, como `Entero`. | `TotalAPagar <- HorasAlquiler * PrecioPorHora` | Por ejemplo: «Hola, Ana: recibimos tu solicitud de alquiler. Horas de alquiler: 3. Total a pagar: $30000. ¡Gracias por elegir Rueda Libre!». |

El precio por hora y el total se definen como `Real`. Aunque en este caso el
precio no tiene centavos, así queda explícito el tipo de dato para una cantidad
numérica que representa dinero.

## 3. El algoritmo

Primero defino las variables que voy a usar. Después pregunto por el nombre y
las horas, hago la multiplicación y finalmente saludo al cliente e informo el
total en una frase completa.

[Ver el algoritmo completo en PSeInt](algoritmos/01_cotizacion_basica.psc).

![Diagrama de flujo de la cotización básica](algoritmos/diagramas/01_cotizacion_basica.svg)

El diagrama muestra el recorrido en orden: definir el precio, leer el nombre y
las horas, calcular el total y responder.

## 4. Pruebas

Multipliqué cada cantidad de horas por $10.000 para calcular el resultado
esperado. Los resultados de esta tabla son una **prueba de escritorio**; queda
pendiente abrir el archivo en PSeInt y confirmar allí los tres casos.

| Entrada | Resultado esperado, calculado a mano | Resultado de la prueba de escritorio |
|---|---|---|
| Nombre: Ana; horas: 1 | $10.000 | «Hola, Ana: recibimos tu solicitud de alquiler. Horas de alquiler: 1. Total a pagar: $10000. ¡Gracias por elegir Rueda Libre!». |
| Nombre: Luis; horas: 3 | $30.000 | «Hola, Luis: recibimos tu solicitud de alquiler. Horas de alquiler: 3. Total a pagar: $30000. ¡Gracias por elegir Rueda Libre!». |
| Nombre: Sara; horas: 8 | $80.000 | «Hola, Sara: recibimos tu solicitud de alquiler. Horas de alquiler: 8. Total a pagar: $80000. ¡Gracias por elegir Rueda Libre!». |

## 5. Qué pasa si las horas son cero o negativas

Por ahora el algoritmo no valida la cantidad de horas. Si se escribe `0`,
calcula un total de `$0`; si se escribe un número negativo, calcula un total
negativo. Ninguno de esos resultados representa un alquiler válido. No agrego
una decisión para corregirlo todavía: lo resolveré en la semana 2.

## 6. Configuración y siguiente paso

Para probarlo, instalaré PSeInt desde su sitio oficial y elegiré un perfil que
exija definir las variables antes de usarlas. Después ejecutaré los casos de
1, 3 y 8 horas y compararé cada respuesta con los cálculos de esta bitácora.
También dejaré pendiente confirmar el formato exacto con que el perfil muestra
los valores `Real`.
