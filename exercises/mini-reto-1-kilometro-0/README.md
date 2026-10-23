# MiniReto 1 · Kilómetro 0: el alquiler sin ambigüedades

Trabajo individual de Algoritmia. El caso es Rueda Libre, un local de alquiler de
bicicletas donde cada persona de taquilla atiende a su manera. Aquí escribo el
proceso de alquiler como un algoritmo, lo pruebo con un compañero y corrijo todo
lo que no quedó claro.

> El enunciado pide un repositorio aparte llamado `rueda-libre-algoritmia` con
> `README.md`, `bitacora.md` y la carpeta `algoritmos/`. Como me pidieron hacerlo
> aquí, esa misma estructura vive como carpeta dentro del repo del curso.

## Cómo está organizado

```
mini-reto-1-kilometro-0/
├── README.md      ← este archivo
├── bitacora.md    ← el entregable: las dos versiones del algoritmo y el análisis
└── algoritmos/
    ├── alquiler-bicicleta-v1.md   ← la primera redacción, con ambigüedades
    ├── alquiler-bicicleta-v2.md   ← la versión corregida
    └── diagramas/
        ├── alquiler-bicicleta-v1.svg
        └── alquiler-bicicleta-v2.svg
```

## Qué hay en cada archivo

- [La bitácora](bitacora.md) es el hilo completo del reto: cuál era el problema,
  cómo quedó la primera versión, qué le confundió al compañero cuando la siguió al
  pie de la letra, cómo la reescribí y por qué la versión final sí funciona como
  algoritmo.
- [La versión 1 del algoritmo](algoritmos/alquiler-bicicleta-v1.md) es lo que salió
  de mi primera escritura: ocho pasos, sin inicio, sin fin y sin ninguna decisión.
- [La versión 2 del algoritmo](algoritmos/alquiler-bicicleta-v2.md) es la corregida:
  ya tiene comienzo y cierre claros, decisiones (por ejemplo, qué hacer cuando no
  quedan bicicletas) y ciclos que siempre terminan.
- Los dos diagramas de flujo, en SVG, acompañan cada versión.

## Los diagramas de flujo

### Versión 1, la que tenía ambigüedades

![Diagrama de flujo del algoritmo v1](algoritmos/diagramas/alquiler-bicicleta-v1.svg)

### Versión 2, la corregida

![Diagrama de flujo del algoritmo v2](algoritmos/diagramas/alquiler-bicicleta-v2.svg)

## Lo que pedía el reto y cómo quedó

- [x] El repositorio tiene `README.md`, `bitacora.md` y la carpeta `algoritmos/`.
- [x] La bitácora cuenta las dos versiones del algoritmo y las ambigüedades que aparecieron al probarlo.
- [x] El algoritmo corregido arranca y termina de forma clara, y toma decisiones.
- [x] Las cinco características de un algoritmo correcto están justificadas con fragmentos del propio texto.
- [x] Los cuatro pilares del pensamiento computacional quedan identificados en el proceso de alquiler.
