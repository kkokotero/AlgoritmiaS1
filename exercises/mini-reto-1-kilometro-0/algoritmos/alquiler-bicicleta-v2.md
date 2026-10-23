# Algoritmo de alquiler de bicicleta — Versión 2

Esta es la versión corregida. Define qué hacer si faltan bicicletas o equipo,
limita los intentos de respuesta y completa el cobro solo cuando ya se sabe que
se puede entregar la bicicleta con casco y candado funcionales.

## INICIO — Alquiler de bicicleta en Rueda Libre

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

## FIN

El alquiler termina de una de dos maneras: se cancela con una explicación antes
de cobrar, o el cliente sale con la bicicleta, el casco, el candado y su
comprobante.

## Diagrama de flujo

![Diagrama de flujo del algoritmo v2](diagramas/alquiler-bicicleta-v2.svg)
