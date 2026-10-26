import src.banda.banda.*

class BandaRock inherits Banda {
    const cantidadSolosGuitarra

    override method gastoExtra() = 10000
    override method popularidad() = 100 * cantidadSolosGuitarra
}
