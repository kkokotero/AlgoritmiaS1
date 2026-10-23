# Algoritmo de alquiler de bicicleta — Versión 1 (sin corregir)

> Primera redacción, escrita de memoria después de observar una atención real en
> Rueda Libre. Es la versión que se intercambió con el compañero para probarla
> literalmente. Contiene ambigüedades a propósito: era el punto de partida.

## Proceso

1. El cliente llega al local y pide alquilar una bicicleta.
2. Se le pide el documento de identidad.
3. Se elige la bicicleta que le guste al cliente.
4. Se le cobra el alquiler.
5. Se revisa la bicicleta.
6. Se le entrega el casco y el candado.
7. Se anota todo en el libro.
8. El cliente se despide y se va con la bicicleta.

## Diagrama de flujo

![Diagrama de flujo del algoritmo v1](diagramas/alquiler-bicicleta-v1.svg)

> Es una secuencia lineal sin bifurcaciones: no hay ninguna decisión que pueda llevar a otro camino, y no se distingue un inicio ni un final.

## Lo que esta versión no resuelve

- No tiene un **inicio** ni un **fin** explícitos: no se sabe cuándo empieza ni cuándo termina el proceso.
- No tiene **ninguna decisión**: no dice qué hacer si no hay bicicletas, si el cliente no tiene documento o si la bicicleta está rota.
- Varias acciones dependen del sentido común de quien atiende ("lo lógico sería..."), que es justo lo que la dueña quiere evitar.
