import src.banda.banda.*

class BandaTrap inherits Banda {
    const tieneHielo
    
    override method popularidad() {
        var popularidad = 0
        if (tieneHielo) popularidad = 1000
        return popularidad
    }
    override method canon() = super() * self.popularidad()
    override method gastoExtra() = 0
}
