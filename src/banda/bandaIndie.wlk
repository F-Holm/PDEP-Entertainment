import src.banda.banda.*

class BandaIndie inherits Banda {
    const cantidadInstrumentos
    
    override method gastoExtra() = 500 * cantidadInstrumentos
    override method popularidad() = 3.14 * nombre.size()
}
