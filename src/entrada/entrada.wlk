import src.productora.*

class Entrada {
    const property banda
    const property fecha
    const precioBase = 1000

    method precio() = precioBase * (1 + productora.porcentajeImpuesto() / 100)
    method esDelAnioPasado() = fecha.year() == new Date().year() - 1
}