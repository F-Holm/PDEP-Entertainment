object Fan {
    override method porcentajeDescuento() = 0
    override method bonificar() {}
}

class Vip inherits Asistente {
    var porcentajeDescuento

    override method porcentajeDescuento() = porcentajeDescuento
    override method bonificar() {
        porcentajeDescuento += 1
    }
}

