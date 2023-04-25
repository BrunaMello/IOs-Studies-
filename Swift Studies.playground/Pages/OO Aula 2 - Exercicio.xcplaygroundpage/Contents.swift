/* Desafio 1 - Registrando o empregado e gerente
 Crie uma classe Empregado que possuirá os seguintes atributos:

 A. Nome (String);
 B. Salário (Double).
 Crie uma classe filha de Empregado, a Gerente. Afinal de contas, gerente é um tipo de empregado.

 Na classe “Gerente”, adicione como atributo “departamento”, que deve ser uma String que diga a qual departamento o gerente pertence. Lembre de usar o super.init() para inicializar os atributos da classe pai.

*/
class Empregado {
    var nome: String
    var salario: Double {
        willSet {
            if newValue > salario {
                print("Parabens, voce recebeu uma promocao")
            }else if newValue < salario {
                print("Novo salario nao pode ser menor que o anterior")
            } else {
                print("Parece que nao houve promocao dessa vez")
            }
        }
    }
    
    init(nome: String, salario: Double) {
        self.nome = nome
        self.salario = salario
    }
    
    func alterarSalario(_ novoSalario: Double){
        salario = novoSalario
    }
}

class Gerente: Empregado {
    var departamento: String
    
    init(nome: String, salario: Double, departamento: String) {
        self.departamento = departamento
        super.init(nome: nome, salario: salario)
    }
}

var empregadoJohn = Gerente(nome: "John", salario: 3000, departamento: "Compras")

print("Empregado nome: \(empregadoJohn.nome), possui um salario de \(empregadoJohn.salario) e trabalha no departamento de \(empregadoJohn.departamento)")

/* Desafio 2 - Calculando o salário do vendedor

 Crie uma outra classe filha chamada Vendedor.
 Faça um método chamado percentualComissao, que recebe como parâmetro o número de vendas que o vendedor realizou. Cada vendedor possui uma comissão de 10% sobre cada venda. Essa comissão é adicionada ao salário final. Retorne o valor final que o vendedor irá receber, supondo que cada venda possui um valor de R$50,00.
*/

class Vendedor: Empregado {
    
    override init(nome: String, salario: Double) {
         super.init(nome: nome, salario: salario)
    }
    
    
    func percentualComissao(_ numeroVendas: Double) -> Double {
        let valorVenda: Double = 50
        let totalComissao = (numeroVendas * valorVenda) * 0.10
        return totalComissao + salario
    }
}

var empregadoBruna = Vendedor(nome: "Bruna", salario: 200)
print("Total salario + comissao: \(empregadoBruna.percentualComissao(1))")

/*Ainda com base no desafio anterior, vamos verificar os tipos de “Empregado”, se a instância é do tipo “Gerente” ou “Vendedor”.
 
 Crie uma função chamada verificaTipo que recebe, como parâmetro, uma instância do tipo Empregado;
 Faça o uso do typecasting para verificar se a instância é um gerente, vendedor ou apenas um outro empregado;
 Mostre no console o nome do empregado e a sua função. Caso o empregado for um gerente, mostre seu departamento também. O resultado final será parecido com esse:
 “O(a) empregado(a) Felipe é um(a) gerente e está no departamento RH.”
 “O(a) empregado(a) Daniel é um(a) vendedor.”*/

func verificaTipo(_ empregado: Empregado) {
    if let empregado = empregado as? Gerente {
        print("O(a) empregado(a) \(empregado.nome) é um(a) gerente e está no departamento \(empregado.departamento).")
    }
    
    if let empregado = empregado as? Vendedor {
        print("O(a) empregado(a) \(empregado.nome) é um(a) vendedor.")
    }
    

}

empregadoJohn.alterarSalario(3000)

