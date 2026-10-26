import src.banda.banda.*

class BandaRock inherits Banda {
    var cantidadSolosGuitarra

    override method gastoExtra() = 10000
    override method popularidad() = 100 * cantidadSolosGuitarra
}
