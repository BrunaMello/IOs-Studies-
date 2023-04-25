class Conta {
    var saldo = 0.0 {
        //observadores de propriedades (willSet e didSet)
        willSet(novoValor) {
            print("Saldo alterado. Novo valor: \(novoValor)")
        }
        
        didSet {
            print("Saldo alterado. Valor anterior: \(oldValue)")
        }
        
    }
    var nome: String
    
    //propriedade computada (nao pode ser let), o get ja esta dentro da declaracao e o set e opcional
//    var negativado: Bool {
//        get {
//            return saldo < 0
//        }
//    }
//
    var negativado: Bool {
        return saldo < 0
    }
    
    //propriedade estatica
    static var taxaTransferencia = 0.1
    
    func sacar(_ valor: Double) {
        saldo -= valor
    }
    
    func depositar(_ valor: Double) {
        saldo += valor
    }
    
    init(nome: String) {
        self.nome = nome
    }
    
    //observadores de propriedades
    
}

var contaBruna = Conta(nome: "Bruna")
contaBruna.depositar(20)
//print(contaBruna.negativado)
//print(contaBruna.saldo)
//contaBruna.depositar(50)
//print(contaBruna.negativado)
//print(contaBruna.saldo)
//print(Conta.taxaTransferencia)
contaBruna.depositar(50)


