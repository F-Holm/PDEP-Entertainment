object Productora {
    var property asistentes = #{}
    var property bandas = #{}

    method presupuestoDeBandas() = bandas.sum({banda => banda.presupuesto()})
    method entradasVendidas() = asistentes.asList().flatMap({asistente => asistente.entradas().asList()})
    method cantidadEntradasVendidas() = self.entradasVendidas().size()
    method ingresosPorVentaDeEntradas() = self.entradasVendidas().sum({entrada => entrada.precio()})
    method gananciaTotal() = self.ingresosPorVentaDeEntradas() - self.presupuestoDeBandas()
    method entradasVendidasPorBanda(banda) = self.entradasVendidas().filter({entrada => entrada.banda() == banda})
    method bandaMasVista() = bandas.max({banda => self.entradasVendidasPorBanda(banda).size()})
    method bonificarVips() {
        asistentes.forEach({asistente => asistente.abono().bonificar()})
    }
}
