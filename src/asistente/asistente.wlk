import src.exception.saldoNegativoException.*

class Asistente {
    var entradas = #{}
    var dineroDisponible
    var property abono

    method verificarSaldo(){
        if (dineroDisponible <= 0){
            throw new SaldoNegativoException()
        }
    }
    method pagarEntrada(entrada){
        dineroDisponible -= entrada.precio() * (1 - abono.porcentajeDescuento() / 100)
    }
    method comprarEntrada(entrada) {
        try{
            self.verificarSaldo()
            self.pagarEntrada(entrada)
            entradas.add(entrada)
        } catch e : SaldoNegativoException {
            console.println("Error: " + e.message())
        }
    }
    method entradasAnioPasado() {
        const anioPasado = new Date().year() - 1
        return entradas.filter({ entrada => entrada.fecha().year() == anioPasado })
    }
    method bandasVistas() = entradas.map({entrada => entrada.banda().nombre()})
}
