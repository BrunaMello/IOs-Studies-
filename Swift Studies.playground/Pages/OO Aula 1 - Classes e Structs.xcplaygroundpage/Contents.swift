struct ContaCorrente {
    var saldo = 0.0
    var nome: String
    
    mutating func sacar(_ valor: Double) {
        saldo -= valor
    }
    
    mutating func depositar(_ valor: Double) {
        saldo += valor
    }
    
    
}

class ContaDeposito {
    var saldo: Double
    var nome: String
    
    //construtor
    init(nome: String) {
        saldo = 0.0
        self.nome = nome
    }
    
    func sacarDeposito(_ valor: Double) {
        saldo -= valor
    }
    
    func depositarDeposito(_ valor: Double) {
        saldo += valor
    }
    
    
}


var contaCorrenteBruna = ContaCorrente(nome: "Bruna")
print(contaCorrenteBruna.saldo)
contaCorrenteBruna.depositar(1500)
print(contaCorrenteBruna.saldo)

