# Algoritmo de alquiler de bicicleta — Versión 1

Esta fue mi primera redacción. La escribí de memoria, después de mirar cómo se
atiende en Rueda Libre, y es la que le pasé a un compañero para que la probara
literalmente. Tiene ambigüedades, pero eso era esperado: era el punto de partida.

## Los pasos

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

En el diagrama se ve el problema de un vistazo: es una línea recta, sin ninguna
bifurcación. No hay ninguna decisión que pueda llevar a otro camino, y tampoco se
distingue dónde empieza ni dónde termina.

## Lo que esta versión no arregla

- No tiene inicio ni fin escritos: no se sabe cuándo arranca el proceso ni cuándo termina.
- No tiene ni una decisión: no dice qué hacer si no quedan bicicletas, si el cliente no tiene documento o si la bicicleta está rota.
- Varios pasos dependen del sentido común de quien atienda, que es justo lo que la dueña quiere evitar.
