# PDEP-Entertainment

## Decisiones importantes de diseño

- Abono: se usó composición porque el tipo de abono de un asistente puede cambiar en tiempo de ejecución (`abono` es una `var property`). Con herencia (ej. `AsistenteVip`) habría que crear un asistente nuevo para cambiarle el abono.
- Banda: se usó herencia porque todas las bandas comparten estado (`nombre`) y comportamiento (`canon()`, `presupuesto()`), y cada tipo solo redefine lo que le es propio (`gastoExtra()`, `popularidad()` y, en el trap, `canon()`). Además, una banda nunca cambia de tipo.
- ImpuestoProductora: se modeló como WKO porque hay un único impuesto, global y compartido por todas las entradas. Si se modifica su porcentaje, impacta en el precio de todas.
- SaldoInsuficienteException: es una excepción propia que hereda de `Exception`. El asistente la lanza cuando no tiene saldo y se atrapa en `comprarEntrada`, así la compra se cancela sin modificar el estado.
- Productora: se usó como WKO porque en el dominio hay una sola productora, y es el punto de acceso a todos los asistentes y bandas.

## Conceptos de la materia utilizados

- WKO (Well Known Object): `productora`, `impuestoProductora` y `fan`, que son únicos y no necesitan estado propio por instancia.
- Polimorfismo: `fan` y `Vip` entienden los mismos mensajes (`porcentajeDescuento()`, `bonificar()`), así que el asistente los usa sin saber cuál tiene. Lo mismo pasa con las bandas, a las que la productora les pide `presupuesto()` sin importar su tipo.
- Herencia: `BandaRock`, `BandaIndie` y `BandaTrap` heredan de `Banda` (con uso de `super()` en `BandaTrap`), y `SaldoInsuficienteException` hereda de `Exception`.
- Composición: el `Asistente` tiene un `abono` (`fan` o `Vip`) y le delega el cálculo del descuento y la bonificación. Como el abono se puede reemplazar, el asistente cambia su comportamiento sin cambiar de clase.
- Abstraccion: `Banda` es una clase abstracta con `gastoExtra()` y `popularidad()` abstractos, y `Abono` es una interfaz que define qué debe saber hacer cualquier abono.

## Diagrama de clases

![Diagrama de clases](diagrama_solucion_HOLM_FEDERICO.png)
