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

Reescribí el algoritmo para que todas las rutas tengan un cierre. Las preguntas
permiten como máximo tres respuestas, las bicicletas y los candados se revisan
una cantidad finita de unidades, y los recursos se comprueban antes de cobrar.
Si falta un elemento necesario, explico que se cancela el alquiler y no cobro.

Al revisar esa primera versión corregida, encontré cuatro vacíos más: las
preguntas podían repetirse sin límite, el cliente podía terminar sin casco, el
cobro ocurría antes de comprobar todo el equipo y no estaba definida con
precisión la devolución de un alquiler por día. Los pasos de abajo resuelven
esos casos.

### INICIO — Alquiler de bicicleta en Rueda Libre

1. Saludar al cliente y pedirle su nombre completo y su cédula o pasaporte. Si
   no presenta un documento, explicarle que no se puede hacer el alquiler e ir
   al **FIN**.
2. Contar las bicicletas disponibles. Si no hay ninguna, avisarle al cliente
   que hoy no hay bicicletas y terminar el proceso.
3. Preguntarle si alquilará por una hora o por un día. Aceptar solo las
   respuestas "hora" o "día". Puede responder hasta tres veces en total,
   contando la primera respuesta. Si después de tres intentos no elige una de
   las dos opciones, explicarle que no se pudo registrar la duración y terminar.
4. Asignar el precio según la duración: una hora cuesta $5.000 y un día cuesta
   $15.000.
5. Preguntarle qué talla de casco necesita: S, M o L. Puede responder hasta
   tres veces en total. Si después de tres intentos no indica una talla válida,
   explicarle que no se pudo determinar el casco y terminar.
6. Revisar las bicicletas disponibles en el orden en que están en el rack.
   Probar en cada una los frenos delantero y trasero, las luces y los cambios.
   Si algún componente falla, marcar esa bicicleta como no disponible, avisar
   al jefe y probar la siguiente. Usar la primera bicicleta que pase todas las
   pruebas. Si se revisan todas y ninguna funciona, avisar al cliente y terminar
   sin cobrar.
7. Buscar el primer casco disponible de la talla solicitada. Si no hay, revisar
   si está disponible una sola talla alternativa: M para quien pidió S o L, y S
   para quien pidió M. Si no hay un casco de esa talla alternativa, explicar que
   no se puede completar el alquiler y terminar sin cobrar. Si sí lo hay,
   ofrecerlo; si el cliente no lo acepta, terminar sin cobrar. Si lo acepta,
   reservarlo para la entrega.
8. Revisar los candados disponibles en el orden en que están guardados,
   probando que cada uno abra y cierre con su llave. Si uno falla, apartarlo y
   probar el siguiente. Reservar el primer candado que funcione. Si no queda
   ningún candado funcional, avisar al cliente y terminar sin cobrar.
9. Cobrar una sola vez el precio asignado. Si el cliente entrega menos,
   devolverle todo el dinero, explicarle cuánto faltó y terminar sin completar
   el alquiler. Si entrega el precio exacto, continuar. Si entrega de más,
   devolverle la diferencia.
10. Registrar en el libro la fecha, el nombre, el documento, la bicicleta
    asignada, la talla de casco entregada, la duración, el precio y la hora de
    devolución. Para una hora, indicar la hora actual más una hora; para un
    día, indicar la misma hora del día siguiente.
11. Entregar al cliente la bicicleta revisada, el casco reservado, el candado
    funcional y el comprobante. Agradecerle y confirmar la hora de devolución.

### FIN

El alquiler termina cancelado y sin cobro si falta un requisito, bicicleta o
elemento funcional; si se completa, el cliente sale con la bicicleta, el casco,
el candado y el comprobante.

![Diagrama de flujo del algoritmo v2](algoritmos/diagramas/alquiler-bicicleta-v2.svg)

*El diagrama muestra las decisiones para seguir con el alquiler o cancelarlo sin
cobro cuando falta un requisito o un elemento funcional.*

[Ver la versión 2 completa](algoritmos/alquiler-bicicleta-v2.md)

---

## 5. Por qué esto sí funciona como algoritmo

**Precisión.** Las tarifas y sus condiciones están especificadas, igual que la
revisión necesaria:

> "Una hora cuesta $5.000 y un día cuesta $15.000."

También se enumeran los frenos, las luces y los cambios que se prueban.

**Finitud.** Las respuestas inválidas tienen un máximo de tres intentos; la
revisión recorre una cantidad finita de bicicletas y candados disponibles. Si
no se encuentra un recurso funcional, el proceso termina sin cobrar. El pago
se intenta una sola vez:

> "Si el cliente entrega menos, devolverle todo el dinero [...] y terminar."

**Orden.** Primero se confirman las entradas y los recursos, luego se cobra,
después se registra el alquiler y finalmente se entrega:

> Paso 6: revisar la bicicleta → paso 7: reservar el casco → paso 8: revisar el candado → paso 9: cobrar → pasos 10-11: registrar y entregar.

Así no se cobra antes de saber que se puede completar el alquiler.

**Determinismo.** Las mismas respuestas y el mismo inventario llevan a la misma
decisión: se elige la primera bicicleta funcional del rack, se aplica una
alternativa de talla definida y se prueba cada candado en orden.

> "Usar la primera bicicleta que pase todas las pruebas."

**Efectividad.** Cada acción se puede realizar con elementos del local: preguntar
y leer el documento, observar la talla, probar los frenos y accesorios, registrar
los datos y recibir o devolver dinero.

> "Probar en cada una los frenos delantero y trasero, las luces y los cambios."

---

## 6. Los cuatro pilares del pensamiento computacional

**Descomposición.** Partí el alquiler en cinco partes que se pueden revisar por
separado sin afectar al resto:

1. Identificar al cliente y confirmar los datos de alquiler (pasos 1-5).
2. Encontrar y revisar una bicicleta funcional (paso 6).
3. Reservar casco y candado funcionales (pasos 7-8).
4. Cobrar y registrar (pasos 9-10).
5. Entregar la bicicleta con su equipo y comprobante (paso 11).

**Abstracción.** Dejé afuera detalles que no cambian la decisión de alquilar,
como el color o la marca de la bicicleta, la ruta del cliente y cómo se fabrica
el casco. Incluí lo necesario para completar el alquiler con seguridad: el
documento, la duración, el precio y la disponibilidad y funcionamiento del equipo.

**Reconocimiento de patrones.** Con cada cliente se repite la misma secuencia:
confirmar datos, comprobar recursos, cobrar y completar el registro. Al revisar
bicicletas y candados se sigue un patrón similar: probar cada elemento en orden
hasta encontrar uno funcional o hasta que no queden más; en este último caso se
termina sin cobrar.

**Algoritmo final.** Es la versión corregida de la sección 4: once pasos con
inicio, fin, decisiones y recorridos limitados que terminan con una cancelación
sin cobro o con la entrega de bicicleta, casco y candado funcionales.
