# Bitácora — MiniReto 3 · Recorridos guiados

**Proyecto:** Rueda Libre, recorridos guiados  
**Trabajo individual**

---

## 1. Qué calcula la cotización

La persona de taquilla ingresa el nombre de un recorrido, el precio por persona
y el tamaño del grupo. El algoritmo multiplica el precio por la cantidad de
personas para obtener el total; calcula el anticipo del 30 % y resta ese anticipo
del total para obtener el saldo que se pagará el día del recorrido.

Los precios disponibles son $45.000 por persona para Río y Parques, $60.000 para
Sabores de Barrio y $85.000 para Reto Las Palmas. El algoritmo recibe el precio
como dato, por lo que se puede usar con cualquiera de los tres recorridos.

## 2. Prueba de escritorio

Caso: **4 personas en Sabores de Barrio**, a $60.000 por persona.

En la tabla, `—` indica que la variable todavía no tiene un valor asignado.
Después de cada instrucción ejecutable se registran los valores de todas las
variables. Las preguntas que se muestran en pantalla no cambian los valores; la
entrada que sigue a cada pregunta sí aparece como una instrucción separada.

| Instrucción ejecutada | NombreRecorrido | CantidadPersonas | PrecioPorPersona | TotalGrupo | PorcentajeAnticipo | Anticipo | SaldoPendiente |
|---|---|---:|---:|---:|---:|---:|---:|
| Definir `NombreRecorrido` | — | — | — | — | — | — | — |
| Definir `CantidadPersonas` | — | — | — | — | — | — | — |
| Definir las variables numéricas | — | — | — | — | — | — | — |
| Mostrar la pregunta por el recorrido | — | — | — | — | — | — | — |
| Leer `NombreRecorrido` | Sabores de Barrio | — | — | — | — | — | — |
| Mostrar la pregunta por el precio | Sabores de Barrio | — | — | — | — | — | — |
| Leer `PrecioPorPersona` | Sabores de Barrio | — | 60.000 | — | — | — | — |
| Mostrar la pregunta por la cantidad de personas | Sabores de Barrio | — | 60.000 | — | — | — | — |
| Leer `CantidadPersonas` | Sabores de Barrio | 4 | 60.000 | — | — | — | — |
| `TotalGrupo <- PrecioPorPersona * CantidadPersonas` | Sabores de Barrio | 4 | 60.000 | 240.000 | — | — | — |
| `PorcentajeAnticipo <- 0.30` | Sabores de Barrio | 4 | 60.000 | 240.000 | 0,30 | — | — |
| `Anticipo <- Redon(TotalGrupo * PorcentajeAnticipo)` | Sabores de Barrio | 4 | 60.000 | 240.000 | 0,30 | 72.000 | — |
| `SaldoPendiente <- TotalGrupo - Anticipo` | Sabores de Barrio | 4 | 60.000 | 240.000 | 0,30 | 72.000 | 168.000 |
| Mostrar el nombre del recorrido | Sabores de Barrio | 4 | 60.000 | 240.000 | 0,30 | 72.000 | 168.000 |
| Mostrar el valor total | Sabores de Barrio | 4 | 60.000 | 240.000 | 0,30 | 72.000 | 168.000 |
| Mostrar el anticipo | Sabores de Barrio | 4 | 60.000 | 240.000 | 0,30 | 72.000 | 168.000 |
| Mostrar el saldo pendiente | Sabores de Barrio | 4 | 60.000 | 240.000 | 0,30 | 72.000 | 168.000 |

El anticipo se calcula con `Redon` a partir del 30 % del total. El saldo se
calcula restando el anticipo al total, no como otro porcentaje independiente.

## 3. Resultado esperado

El algoritmo debe mostrar:

- **Recorrido:** Sabores de Barrio
- **Valor total para el grupo:** $240.000 COP
- **Anticipo del 30 %:** $72.000 COP
- **Saldo pendiente para el día del recorrido:** $168.000 COP

Estos valores se comprobaron con una prueba de escritorio. La ejecución y la
comparación en PSeInt quedan pendientes de realizar en la aplicación, que no
está instalada en este entorno.

## 4. Símbolos del diagrama de flujo

En el [diagrama de flujo](diagramas/02_cotizacion_recorrido.png) identifico:

- **Inicio y fin:** óvalos que indican dónde empieza y termina el algoritmo.
- **Entrada y salida:** paralelogramos para leer el nombre del recorrido, el
  precio y la cantidad de personas, y para mostrar la cotización.
- **Proceso:** rectángulos para calcular el total del grupo, el anticipo y el
  saldo pendiente.

El flujo es secuencial: no hay decisiones ni ciclos, y cada cálculo usa los
valores producidos por las instrucciones anteriores.

La imagen incluida es una vista previa del flujo construida a partir del
algoritmo. Falta abrir el pseudocódigo en PSeInt y reemplazarla por la imagen
exportada desde esa aplicación, que no está instalada en este entorno.
