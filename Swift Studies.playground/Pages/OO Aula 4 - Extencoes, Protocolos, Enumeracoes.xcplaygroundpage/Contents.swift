//enumerations
enum FormaDePagamento {
    case pix
    case boleto
    case saldoEmConta
}

//raw value
enum Meses: Int {
    case janeiro = 1, fevereiro, marco, abril, maio, junho, julho, agosto, setembro, outubro, novembro, dezembro
}

var janeiro = Meses.janeiro
print(janeiro.rawValue)
var fevereiro: Meses = .fevereiro
print(fevereiro.rawValue)

enum Moeda: Double {
    case umCentavo = 0.01
    case cincoCentavos = 0.05
    case cinquentaCentavos = 0.50
}

var moedaCincoCentavos = Moeda.cincoCentavos
print(moedaCincoCentavos.rawValue)

enum ResultadoSaque {
    case sucesso(novoValor: Double)
    case falha(erro: String)
}

//protocolos
protocol Conta {
    var saldo: Double {get set}
    
    func sacar(_ valor: Double) -> ResultadoSaque
    
    func depositar(_ valor: Double)
    
}

class ContaCorrente: Conta {
    var nome: String
    var saldo: Double = 0.0
    
    func sacar(_ valor: Double) -> ResultadoSaque {
        if valor > saldo {
            return .falha(erro: "Valor maior que saldo")
        } else {
            saldo -= valor
            return .sucesso(novoValor: saldo)
        }
    }
    
    func depositar(_ valor: Double) {
        saldo += valor
    }
    
    func pagamentoCartao(_ tipoPagamento: FormaDePagamento) {
        switch tipoPagamento {
        case FormaDePagamento.pix:
            print("pagamento efetuado por pix")
        case .boleto:
            print("pagamento efetuado por boleto")
        case .saldoEmConta:
            print("pagamento efetuado por saldo")
        }
    }
    
    init(nome: String) {
        self.nome = nome
    }
    
}

//extensions
extension Conta {
    func tranferir(_ contaDestino: Conta, _ valor: Double) {
        sacar(valor)
        contaDestino.depositar(valor)
    }
}

var contaGeovana = ContaCorrente(nome: "Geovana")
contaGeovana.depositar(200)
//print("Saldo conta \(contaGeovana.nome): $ \(contaGeovana.saldo)")
//contaGeovana.pagamentoCartao(.pix)
let resultado = contaGeovana.sacar(50)

switch resultado {
case .sucesso(let novoValor):
    print("Saque foi um sucesso. Saldo \(novoValor)")
case .falha(let erro):
    print(erro)
}
 
var contaBruna = ContaCorrente(nome: "Bruna")
contaBruna.depositar(150)
//print("Saldo conta \(contaBruna.nome): $ \(contaBruna.saldo)")

contaGeovana.tranferir(contaBruna, 35.00)
//print("Novo saldo conta \(contaBruna.nome): $ \(contaBruna.saldo)")
//print("Novo saldo conta \(contaGeovana.nome): $ \(contaGeovana.saldo)")

//extensoes (nao pode conter propriedades armazenadas)
extension String {
    
    func contaCaracteresString() -> Int {
        return self.count
    }
}



let texto = "Bruna"
//print(texto.contaCaracteresString())










