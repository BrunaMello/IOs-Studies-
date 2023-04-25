/* Crie uma classe/struct “Pessoa” que possua os seguintes atributos, que funcionarão como propriedades armazenadas:
 
 Nome (String);
 Idade (Int);
 Altura (Double);
 Peso (Double).
 E então, crie duas propriedades computadas:

 IMC (que retorna o índice de massa corporal da pessoa a partir da sua altura e peso);
 Adulto (que retorna se a pessoa é maior de 18 ou não, a partir do atributo “idade”).
 Caso não saiba, o IMC é calculado por peso / (altura * altura).
 */

class Pessoa {
    var nome: String
    var idade: Int
    var altura: Double
    var peso: Double
    
    var imc: Double {
        return peso / (altura * altura)
    }
    
    var adulto: Bool {
        return idade > 18
    }
    
    init(nome: String, idade: Int, altura: Double, peso: Double) {
        self.nome = nome
        self.idade = idade
        self.altura = altura
        self.peso = peso
    }
    
}

var bruna = Pessoa(nome: "Bruna", idade: 12, altura: 1.70, peso: 69.0)

print(bruna.imc)
print(bruna.adulto)

/* Desafio 2 - Observadores de propriedades
 Na aula anterior, quando vimos sobre herança, criamos a classe “Empregado” que possuía como atributo o salário, lembra-se disso?

 Agora, vamos criar um observador de propriedade para esse atributo. Caso o salário seja alterado para um valor maior do que era, exiba no console a mensagem: “Parabéns, você recebeu uma promoção”. Caso o novo valor seja o mesmo que o anterior, exiba então a mensagem: “Parece que não houve uma promoção dessa vez.”.

 Por fim, se o novo valor do salário for menor do que já era anteriormente, bloqueie essa operação e exiba no console a mensagem: “O novo salário não pode ser menor do que era anteriormente”.

 Lembre-se que para pegar o valor antigo, use o didSet, e para pegar o valor novo, use o willSet.*/
