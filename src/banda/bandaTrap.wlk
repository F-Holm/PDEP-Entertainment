import src.banda.banda.*

class BandaTrap inherits Banda {
    const tieneHielo
    
    override method popularidad() {
        if (tieneHielo) {
            return 1000
        }
        return 0
    }
    override method canon() = super() * self.popularidad()
    override method gastoExtra() = 0
}
