import src.banda.banda.*

class BandaTrap inherits Banda {
    var tieneHielo
    
    override method popularidad() {
        if (tieneHielo) {
            return 1000
        }
        return 0
    }
    override method canon() = super().canon() * self.popularidad()
    override method gastoExtra() = 0
}
