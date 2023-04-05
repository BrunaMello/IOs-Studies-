import UIKit

//criando variaveis --precisa ser aspas duplas
var nome: String = "Bruna" //variavel com definicao --nao sera alterado depois
var idade = 32

//constantes para nao alterar mais o valor
let idadeInalterada = 32

//printando o codigo
print("O meu nome: \(nome)")
print(idade)

//fazendo um parse para double
idade = Int(22.5)

print(idade)

//
var coeficienteResdimento = 9.5

//para iniciar var depois de declarar precisa declarar o tipo
var possuiHistoricoREprovacao: Bool
possuiHistoricoREprovacao = false

var turnoEmQueEstuda: Character = "D"


//Type alias (nomear melhor os tipos de dados das variaveis)
typealias Estudante = String

var aluno1: Estudante = "Joao"
var aluno2: Estudante = "Ana"

//Exercicio
//Crie uma ficha com as seguintes informacoes suas e mostre elas em um print

var inicialNome: Character = "B"
var name: String = "Bruna"
var apelido: String = "Bru"
var age: Int = 32
var altura: Double = 1.70
var gostaDeSwift: Bool = true

print("\n", "Inicial do Nome: \(inicialNome)", "\n", "Nome: \(name)", "\n", "Apelido: \(apelido)", "\n", "Idade: \(age)", "\n", "Altura: \(altura)", "\n", "Gosta de Swift: \(gostaDeSwift)")


//operacoes aritimeticas
2 + 2
10 - 2
8 * 2
5 / 2
5 % 2

//se dividir numero inteiro por inteiro o resultado sera inteiro
5.0 / 2
Double(5) / 2

//ordem das operacoes (segue a mesma da matematica) 1: multiplicacao/divisao 2: soma/subtracao
(5 + 2) * 10
5 + 2 * 10

var numero1 = 10
var numero2 = 50
var soma = numero1 + numero2
print(soma)

//operador atribuicao composto
numero1 += 2
numero1 -= 2
numero1 /= 2

//concatenacao de strings
var sobrenome = "Mello"
print(nome + " " + sobrenome)
print("Meu nome: \(nome) \(sobrenome)")

//exercicio: A partir de uma variável que armazena um valor de temperatura em celsius, crie uma outra variável que faça o cálculo dessa temperatura em celsius para fahrenheit.

var grausCelcius: Double = 13.0
var grausFahrenheit: Double = grausCelcius * 9/5 + 32

print("Em fahrenheit a temperature e: \(grausFahrenheit)")

//exercicio: Crie três variáveis que representam três notas de diferentes alunos. A seguir, crie uma variável que calcule a média dessas notas e mostre essa média no console.

var nota1: Double = 7.5
var nota2: Double = 6.5
var nota3: Double = 5.4
var media: Double = (nota1 + nota2 + nota3) / 3
print("A sua media geral e: \(media)")







