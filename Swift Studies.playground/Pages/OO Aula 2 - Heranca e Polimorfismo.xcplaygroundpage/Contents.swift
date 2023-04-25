//para impedir uma classe de ser herdada coloca o final no comeco da declaracao
class Conta {
    var saldo = 0.0
    var nome: String
    
    func sacar(_ valor: Double) {
        saldo -= valor
    }
    
    func depositar(_ valor: Double) {
        saldo += valor
    }
    
    init(nome: String) {
        self.nome = nome
    }
}

class ContaPoupanca: Conta {
    var possuiCartaoDebito: Bool
    
    func solicitarCartaoDebito() {
        possuiCartaoDebito = true
        print("Cliente solicitando cartao de debito")
    }
    
    //sobrescrevendo uma funcao da classe pai
    override func sacar(_ valor: Double) {
        saldo -= valor + 10
    }
    
    init(nome: String, possuiCartaoDebito: Bool) {
        self.possuiCartaoDebito = possuiCartaoDebito
        //chamando inicializador da classe pai
        super.init(nome: nome)
    }
}

class ContaCorrente: Conta {
    func solicitarEmprestimo(_ valor: Double) {
        print("Cliente solicitando emprestimo de: \(valor)")
        //chamando metodo da classe pai
        super.depositar(valor)
    }
    
    override func sacar(_ valor: Double) {
        saldo -= valor + 5
    }
}

var contaPoupanca = ContaPoupanca(nome: "Bruna", possuiCartaoDebito: false)
contaPoupanca.depositar(50)
contaPoupanca.sacar(20)
//print(contaPoupanca.saldo)
contaPoupanca.solicitarCartaoDebito()

var contaCorrente = ContaCorrente(nome: "Ana")
contaCorrente.depositar(100)
//print(contaCorrente.saldo)
contaCorrente.sacar(20)
contaCorrente.solicitarEmprestimo(20000)
//print(contaCorrente.saldo)

//polimorfismo
func exibeSaldoConta(_ conta: Conta) {
    if conta is ContaCorrente {
        print("Conta do tipo Conta Corrente")
    }
    
    //typecasting as?
    if let contaCorrente = conta as? ContaCorrente {
        contaCorrente.solicitarEmprestimo(100)
    }
    
    guard let contaPoupanca = conta as? ContaPoupanca else {
        return
    }
    print(contaPoupanca.possuiCartaoDebito)
    
    
}

exibeSaldoConta(contaCorrente)
exibeSaldoConta(contaPoupanca)







