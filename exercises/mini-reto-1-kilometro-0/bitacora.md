# Bitácora — MiniReto 1 · Kilómetro 0: el alquiler sin ambigüedades

**Proyecto:** Rueda Libre, alquiler de bicicletas

**Trabajo individual**

**Fecha:** 23/10/2026

---

## 1. Qué pasaba en el local

En Rueda Libre no hay dos personas de taquilla que atiendan igual. Algunos piden
el documento apenas llega el cliente, otros se lo piden al final. Hay quien olvida
entregar el casco y quien cobra antes de revisar que la bicicleta funcione. La
dueña lo resume en una frase: quiere un proceso que sea siempre el mismo, lo haga
quien lo haga.

Eso, exactamente eso, es un algoritmo: un proceso que se ejecuta igual, paso a paso
y con un final claro. Este reto consiste en escribirlo, probarlo con alguien más,
arreglar lo que no funcione y dejarlo listo.

---

## 2. La primera versión

Escribí los pasos de memoria, tal como los recordaba después de ver cómo se atiende
en el local. Quedó así:

1. El cliente llega al local y pide alquilar una bicicleta.
2. Se le pide el documento de identidad.
3. Se elige la bicicleta que le guste al cliente.
4. Se le cobra el alquiler.
5. Se revisa la bicicleta.
6. Se le entrega el casco y el candado.
7. Se anota todo en el libro.
8. El cliente se despide y se va con la bicicleta.

![Diagrama de flujo del algoritmo v1](algoritmos/diagramas/alquiler-bicicleta-v1.svg)

*Así se ve en un diagrama: una línea recta, sin ninguna bifurcación.*

[Ver la versión 1 completa](algoritmos/alquiler-bicicleta-v1.md)

---

## 3. Lo que le pasó al compañero al seguir mis instrucciones

Le entregué esa lista a un compañero y le pidió que la siguiera en voz alta y de
forma literal, sin rellenar con sentido común lo que yo hubiera dejado fuera. Mientras
él hablaba, yo anotaba cada momento en que se quedó sin saber qué hacer.

| # | Paso | Lo que no quedó claro | Lo que preguntó él |
|---|------|----------------------|-------------------|
| 1 | Paso 1 | Nunca dije exactamente cuándo empieza la atención. | "¿Empiezo cuando entra por la puerta, cuando habla o cuando se sienta?" |
| 2 | Paso 2 | Tampoco dije quién pide el documento, ni qué pasa si el cliente no lo trae. | "¿Se lo pido yo? ¿Y si dice que no lo trae, sigo al paso 3 o se va?" |
| 3 | Paso 3 | No había tallas ni disponibilidad; "la que le guste" no es una instrucción que se pueda seguir. | "¿Cómo sé cuál está disponible y cuál en buen estado? ¿Y si no queda ninguna?" |
| 4 | Paso 4 | No dije cuánto cuesta ni cuándo se cobra. | "¿Le cobro 5.000? ¿15.000? ¿En efectivo o tarjeta? ¿Antes o después de revisar la bici?" |
| 5 | Paso 5 | La revisión venía **después** del cobro, así que si la bici estaba rota, ya le había cobrado. | "¿La reviso aunque ya le haya cobrado?" |
| 6 | Paso 6 | No dije la talla del casco ni qué hacer si no había de esa talla; tampoco si el candado se entregaba abierto o cerrado. | "¿Qué talla le doy? ¿Y si no hay? ¿Le doy el candado cerrado?" |
| 7 | Paso 7 | No aclaré qué datos anotar ni en qué momento. | "¿Anoto el documento? ¿El nombre? ¿La hora? ¿O solo que alquiló?" |
| 8 | Paso 8 | No hay final: no se distingue si el proceso ya terminó o si falta avisar la hora de devolución. | "¿Ya terminé? ¿No debo decirle a qué hora vuelve?" |
| — | Todo | No hay ni una sola decisión, y tampoco hay inicio ni fin escritos. | "Si no hay bicicletas, ¿qué hago? No me dices nada." |

Lo que quedó claro con ese intercambio es que la versión 1 solo servía si la persona
de taquilla ya sabía de antemano cómo atender. Justamente lo contrario de lo que
pide la dueña.

---

## 4. La versión corregida

Reescribí todo desde cero, quitando una por una las ambigüedades de la tabla. Agregué
decisiones, entre ellas el caso de no haber bicicletas, validé las respuestas del
cliente y le puse un cierre explícito.

### INICIO — Alquiler de bicicleta en Rueda Libre

1. Contar cuántas bicicletas hay en el rack con el cartel de "disponible". Guardar el número en `bicicletas_disponibles`.
2. **Si `bicicletas_disponibles` es 0**, decirle al cliente "Hoy no nos quedan bicicletas disponibles, vuelva mañana" e ir directamente al **FIN**. Si es mayor que 0, seguir en el paso 3.
3. Preguntar al cliente: "¿Qué talla de casco usa: S, M o L?". Si responde cualquier otra cosa, repetir la pregunta. Guardar la respuesta en `talla_casco`.
4. Preguntar al cliente: "¿Alquila por hora o por día?". Si responde cualquier otra cosa, repetir la pregunta. Guardar la respuesta en `duracion`.
5. Si `duracion` es "hora", `precio` <- 5.000. Si `duracion` es "dia", `precio` <- 15.000.
6. Pedirle al cliente su cédula o pasaporte. **Si el cliente no entrega ningún documento**, decirle "Sin documento no podemos alquilar" e ir directamente al **FIN**.
7. Copiar en el libro de alquiler, con letra legible: número de documento, nombre completo, `talla_casco`, `duracion`, `precio` y la fecha de hoy.
8. Revisar la bicicleta con el cliente al lado: probar el freno delantero, el freno trasero, las luces y los cambios. **Si alguno falla**, sacar la bicicleta del rack, avisar al jefe y repetir el paso 8 con la siguiente bicicleta. **Si se revisaron todas y ninguna sirve**, decirle al cliente "Hoy no podemos alquilar", tachar el registro del paso 7 e ir directamente al **FIN**, sin cobrar.
9. Pedirle al cliente el dinero: debe entregar exactamente `precio` o más. **Si entrega menos**, devolverle lo que entregó, decirle "Faltan $X" (donde `X` es `precio` menos lo entregado) y repetir el paso 9. **Si entrega de más**, entregarle el vuelto (`lo_entregado` menos `precio`).
10. Entregarle la bicicleta al cliente y pedirle que confirme en voz alta la hora en que debe devolverla (la hora actual más `duracion`).
11. Buscar en el estante un casco de la `talla_casco` registrada en el paso 3. **Si no hay de esa talla**, ofrecerle al cliente la talla más cercana (S→M, L→M, M→L). Si el cliente la acepta, entregarla; si la rechaza, decirle "Entonces alquila sin casco" y seguir en el paso 12.
12. Entregarle un candado nuevo cerrado con llave y pedirle que lo abra y lo cierre una vez frente a usted. **Si no abre o no cierra**, entregar otro candado nuevo y repetir el paso 12.
13. Entregar el comprobante de pago y agradecer al cliente.

### FIN

El cliente sale del local con la bicicleta, el casco si lo aceptó, y el candado.

![Diagrama de flujo del algoritmo v2](algoritmos/diagramas/alquiler-bicicleta-v2.svg)

*En el diagrama se ven los rombos, que son las decisiones. Los lazos de vuelta son
los ciclos, y las terminaciones `stop` marcan los caminos que llevan al **FIN** sin
haber cobrado.*

[Ver la versión 2 completa](algoritmos/alquiler-bicicleta-v2.md)

---

## 5. Por qué esto sí funciona como algoritmo

**Precisión.** Cada paso dice exactamente qué hacer. El precio no depende de la
interpretación de nadie:

> "Si `duracion` es "hora", `precio` <- 5.000. Si `duracion` es "dia", `precio` <- 15.000."

No puse "cobrar lo que cueste", puse la acción concreta para cada caso.

**Finitud.** Todo el proceso termina, y los ciclos tienen condición de salida:

> "Si `bicicletas_disponibles` es 0, decirle al cliente [...] e ir directamente al **FIN**."

Los "repetir" de los pasos 3, 4, 9 y 12 también terminan, porque solo se repiten
mientras la respuesta no sea válida.

**Orden.** Los pasos van en la secuencia escrita, y el cobro no aparece antes de
saber que la bicicleta sirve:

> Paso 7: registrar → paso 8: revisar la bicicleta → paso 9: cobrar → paso 10: entregar.

Cambiar el orden del 8 y el 9 daría otro algoritmo distinto, y de hecho el de la
versión 1 los tenía al revés.

**Determinismo.** Ante los mismos datos, el resultado es el mismo, sin importar quién
esté en taquilla:

> "Si `duracion` es "hora", `precio` <- 5.000. Si `duracion` es "dia", `precio` <- 15.000."

Dos personas distintas atendiendo al mismo cliente terminan cobrando el mismo precio.

**Efectividad.** Cualquier persona de taquilla puede ejecutar estos pasos sin saber
de nada especial y sin equipo distinto al libro, el rack y el sistema de cobro:

> "Copiar en el libro de alquiler [...] número de documento, nombre completo, `talla_casco`, `duracion`, `precio` y la fecha de hoy."

No pide cálculos complicados ni que nadie sepa de mecánica.

---

## 6. Los cuatro pilares del pensamiento computacional

**Descomposición.** Partí el alquiler en cinco trozos que se pueden tocar por
separado sin afectar al resto:

1. Verificar disponibilidad (pasos 1-2).
2. Registrar al cliente (pasos 3-7).
3. Revisar la bicicleta (paso 8).
4. Cobrar (paso 9).
5. Entregar bicicleta, casco y candado (pasos 10-13).

**Abstracción.** Dejé afuera todo lo que no cambiaba el resultado: el color y la
marca de la bicicleta, el nombre de quien atiende, la ruta que hará el cliente, cómo
se fabrica el casco y qué banco procesa el pago. Lo que dejé adentro es lo que
importa para decidir: cuántas bicicletas hay, qué talla de casco, cuánto dura el
alquiler, el documento y el monto a cobrar.

**Reconocimiento de patrones.** Con cada cliente se repite el mismo ciclo: *validar
los datos, entregar el recurso, cobrar y cerrar el registro*. También se repite en
los pasos 8, 11 y 12 el patrón de "si el recurso falla, usar el siguiente; si se
acaban todos, avisar y terminar". Ver eso ahorró reescribir la misma lógica tres
veces: es la misma estructura aplicada a bicicletas, cascos y candados.

**Algoritmo final.** Es la versión corregida de la sección 4: trece pasos con
inicio, fin, decisiones y ciclos acotados, que siempre dan lo mismo ante los mismos
datos, sin importar quién esté atendiendo.

