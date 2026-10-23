# Rueda Libre · Asistente de taquilla v0.1

**MiniReto 4 · La cuenta del grupo**

Este proyecto reúne los primeros algoritmos del asistente de taquilla de Rueda
Libre. La v0.1 calcula el alquiler de bicicletas, el costo de un recorrido
guiado y la cuenta completa de un grupo, incluido el aporte voluntario para
mantenimiento y el valor por persona redondeado hacia arriba a la centena.

## Cómo está organizado

```
mini-reto-4-asistente-de-taquilla-v0.1/
├── README.md
├── bitacora.md
└── algoritmos/
    ├── 03_cuenta_grupo.psc
    └── diagramas/
        ├── 03_cuenta_grupo.svg
        └── 03_cuenta_grupo.png
```

Los dos primeros algoritmos se desarrollaron en los retos anteriores:

- [01 · Cotización básica del alquiler](../mini-reto-2-la-primera-cotizacion-en-pseInt/algoritmos/01_cotizacion_basica.psc):
  calcula el costo por horas de una bicicleta urbana.
- [02 · Cotización del recorrido](../mini-reto-3-recorridos-guiados-del-pseudocodigo-al-diagrama/algoritmos/02_cotizacion_recorrido.psc):
  calcula el total del grupo, el anticipo y el saldo de un recorrido.
- [03 · Cuenta del grupo](algoritmos/03_cuenta_grupo.psc):
  reúne el alquiler y el recorrido, suma el aporte voluntario del 10 % y
  distribuye el total entre las personas.

## Cómo abrirlos en PSeInt

Abre PSeInt y usa **Archivo → Abrir** para seleccionar cualquiera de los tres
archivos `.psc`. Para ver el flujo del tercer algoritmo, abre
`03_cuenta_grupo.psc` y genera su diagrama desde las opciones de PSeInt.

## Diagrama de flujo

![Diagrama de flujo de la cuenta del grupo](algoritmos/diagramas/03_cuenta_grupo.png)

La imagen incluida es una vista previa del flujo. Falta exportar desde PSeInt el
diagrama oficial, porque PSeInt no está instalado en este entorno.

También está disponible la [versión vectorial](algoritmos/diagramas/03_cuenta_grupo.svg).

## Estado de la v0.1

- [x] Tres algoritmos de PSeInt enlazados en el proyecto.
- [x] El algoritmo 03 calcula alquiler, recorrido, subtotal, aporte, total y
  valor por persona redondeado.
- [x] La bitácora documenta la descomposición y los tres casos de prueba.
- [ ] Ejecutar los casos en PSeInt y confirmar la salida.
- [ ] Reemplazar la vista previa por el diagrama exportado desde PSeInt.
