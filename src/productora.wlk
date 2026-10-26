object Productora {
    var asistentes = #{}

    method entradasVendidas() = asistentes.asList().flatMap({asistente => asistente.entradas().asList()})
    method cantidadEntradasVendidas() = self.entradasVendidas().size()
    method gananciaTotal() = self.entradasVendidas().sum({entrada => entrada.precio()})
    method entradasVendidasPorBanda(banda) = self.entradasVendidas().filter({entrada => entrada.banda() == banda})
    method bandasContratadas() = self.entradasVendidas().map({entrada => entrada.banda()}).asSet()
    method bandaMasVista() = self.bandasContratadas().max({banda => self.entradasVendidasPorBanda(banda).size()})
    method bonificarVips() {
        asistentes.forEach({asistente => asistente.abono().bonificar()})
    }
}
