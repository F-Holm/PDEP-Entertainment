object fan {
    method montoAPagar(entrada) = entrada.precio()
    method bonificar() {}
}

class Vip {
    var porcentajeDescuento

    method montoAPagar(entrada) = entrada.precio() * (1 - porcentajeDescuento / 100)
    method bonificar() {
        porcentajeDescuento += 1
    }
}
