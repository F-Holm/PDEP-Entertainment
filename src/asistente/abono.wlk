object fan {
    method porcentajeDescuento() = 0
    method bonificar() {}
}

class Vip {
    var porcentajeDescuento

    method porcentajeDescuento() = porcentajeDescuento
    method bonificar() {
        porcentajeDescuento += 1
    }
}
