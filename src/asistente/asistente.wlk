import src.exception.saldoInsuficienteException.*

class Asistente {
    var property entradas = #{}
    var dineroDisponible
    var property abono

    method verificarSaldo(){
        if (dineroDisponible <= 0){
            throw new SaldoInsuficienteException()
        }
    }
    method pagarEntrada(entrada){
        dineroDisponible -= abono.montoAPagar(entrada)
    }
    method comprarEntrada(entrada) {
        self.verificarSaldo()
        self.pagarEntrada(entrada)
        entradas.add(entrada)
    }
    method entradasAnioPasado() = entradas.filter({ entrada => entrada.esDelAnioPasado() })
    method bandasVistas() = entradas.map({entrada => entrada.banda().nombre()})
}
