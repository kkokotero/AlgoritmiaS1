# Algoritmo de alquiler de bicicleta — Versión 2 (corregida)

> Versión corregida después del intercambio con el compañero. Inicio y fin
> explícitos, decisiones, entradas/salidas definidas y ningún paso que dependa
> del sentido común.

## INICIO — Alquiler de bicicleta en Rueda Libre

1. Contar cuántas bicicletas hay en el rack con el cartel de "disponible". Guardar el número en `bicicletas_disponibles`.
2. Si `bicicletas_disponibles` es 0, decirle al cliente "Hoy no nos quedan bicicletas disponibles, vuelva mañana" e ir directamente al **FIN**. Si es mayor que 0, seguir en el paso 3.
3. Preguntar al cliente: "¿Qué talla de casco usa: S, M o L?". Si responde cualquier otra cosa, repetir la pregunta. Guardar la respuesta en `talla_casco`.
4. Preguntar al cliente: "¿Alquila por hora o por día?". Si responde cualquier otra cosa, repetir la pregunta. Guardar la respuesta en `duracion`.
5. Si `duracion` es "hora", `precio` <- 5.000. Si `duracion` es "dia", `precio` <- 15.000.
6. Pedirle al cliente su cédula o pasaporte. Si el cliente no entrega ningún documento, decirle "Sin documento no podemos alquilar" e ir directamente al **FIN**.
7. Copiar en el libro de alquiler, con letra legible: número de documento, nombre completo, `talla_casco`, `duracion`, `precio` y la fecha de hoy.
8. Revisar la bicicleta con el cliente al lado: probar el freno delantero, el freno trasero, las luces y los cambios. Si alguno falla, sacar la bicicleta del rack, avisar al jefe y repetir el paso 8 con la siguiente bicicleta. Si se revisaron todas y ninguna sirve, decirle al cliente "Hoy no podemos alquilar", tachar el registro del paso 7 e ir directamente al **FIN**, sin cobrar.
9. Pedirle al cliente el dinero: debe entregar exactamente `precio` o más. Si entrega menos, devolverle lo que entregó, decirle "Faltan $X" (donde `X` es `precio` menos lo entregado) y repetir el paso 9. Si entrega de más, entregarle el vuelto (`lo_entregado` menos `precio`).
10. Entregarle la bicicleta al cliente y pedirle que confirme en voz alta la hora en que debe devolverla (la hora actual más `duracion`).
11. Buscar en el estante un casco de la `talla_casco` registrada en el paso 3. Si no hay de esa talla, ofrecerle al cliente la talla más cercana (S→M, L→M, M→L). Si el cliente la acepta, entregarla; si la rechaza, decirle "Entonces alquila sin casco" y seguir en el paso 12.
12. Entregarle un candado nuevo cerrado con llave y pedirle que lo abra y lo cierre una vez frente a usted. Si no abre o no cierra, entregar otro candado nuevo y repetir el paso 12.
13. Entregar el comprobante de pago y agradecer al cliente.

## FIN

El cliente sale del local con la bicicleta, el casco (si lo aceptó) y el candado.
