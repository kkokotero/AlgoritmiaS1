# MiniReto 2 · La primera cotización en PSeInt

**Trabajo individual**

En este reto automatizo el cobro más sencillo de Rueda Libre: una bicicleta
urbana cuesta **$10.000 por hora** e incluye casco y candado. La persona de
taquilla escribe el nombre del cliente y la cantidad de horas; el algoritmo
calcula y muestra el valor del alquiler.

## Cómo está organizado

```
mini-reto-2-la-primera-cotizacion-en-pseInt/
├── README.md
├── bitacora.md
└── algoritmos/
    ├── 01_cotizacion_basica.psc
    ├── 01_cotizacion_basica.md
    └── diagramas/
        └── 01_cotizacion_basica.svg
```

## Archivos del reto

- [La bitácora](bitacora.md) explica las entradas, el cálculo, el resultado y
  los casos de prueba.
- [El algoritmo en PSeInt](algoritmos/01_cotizacion_basica.psc) lee los datos,
  calcula el total y responde con un mensaje para el cliente.
- [La explicación del algoritmo](algoritmos/01_cotizacion_basica.md) describe
  el modelo entrada–proceso–salida.
- El [diagrama de flujo](algoritmos/diagramas/01_cotizacion_basica.svg) acompaña
  al algoritmo.

## Antes de ejecutarlo

Instala PSeInt desde su sitio oficial y selecciona un perfil que exija definir
las variables antes de usarlas. Abre `01_cotizacion_basica.psc` y ejecútalo
desde PSeInt. El algoritmo es secuencial: todavía no valida si las horas son
cero o negativas; ese caso queda pendiente para la semana 2.

## Criterios del reto

- [x] El pseudocódigo define las variables antes de leerlas o utilizarlas.
- [x] El precio por hora tiene un nombre propio y no está escrito dentro de la
  fórmula del total.
- [x] La bitácora incluye las entradas, el proceso, la salida y tres casos de
  prueba calculados a mano.
- [x] La bitácora deja registrado qué ocurre con cero horas o con una cantidad
  negativa, sin agregar todavía una decisión para corregirlo.
- [x] Confirmar la ejecución de los tres casos en PSeInt con el perfil elegido.
