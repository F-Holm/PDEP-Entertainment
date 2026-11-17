object productora {
    var property asistentes = #{}
    var property bandas = #{}
    var property porcentajeImpuesto = 1

    method presupuestoDeBandas() = bandas.sum({banda => banda.presupuesto()})
    method entradasVendidas() = asistentes.flatMap({asistente => asistente.entradas()})
    method cantidadEntradasVendidas() = self.entradasVendidas().size()
    method ingresosPorVentaDeEntradas() = self.entradasVendidas().sum({entrada => entrada.precio()})
    method gananciaTotal() = self.ingresosPorVentaDeEntradas() - self.presupuestoDeBandas()
    method entradasVendidasPorBanda(banda) = self.entradasVendidas().filter({entrada => entrada.banda() == banda})
    method bandaMasVista() = bandas.max({banda => self.entradasVendidasPorBanda(banda).size()})
    method bonificarVips() {
        asistentes.forEach({asistente => asistente.abono().bonificar()})
    }
}
