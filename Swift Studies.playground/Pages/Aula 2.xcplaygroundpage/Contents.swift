//operadores relacionais
var pontuacao1 = 8.0
var pontuacao2 = 10.0

pontuacao1 > pontuacao2
pontuacao1 >= pontuacao2
pontuacao1 == pontuacao2
pontuacao1 < pontuacao2
pontuacao1 <= pontuacao2
pontuacao1 != pontuacao2

var usuario1Venceu = pontuacao1 > pontuacao2
var usuario2Venceu = pontuacao2 > pontuacao1

var idade: Int = 18
var adulto = idade >= 18
var possuiCNHValida = false

var podeDirigir = adulto && possuiCNHValida
var podeDirigir2 = adulto || possuiCNHValida
var podeDirigir3 = !adulto && possuiCNHValida

//condicionais
if idade >= 18 {
    print("Pode tirar Carta.")
} else {
    print("Nao pode tirar carta.")
}


//condicionais com duas condicoes
if idade >= 18 && possuiCNHValida {
    print("Pode dirigir.")
} else {
    print("Nao pode dirigir.")
}

//aninhamento de condicoes
var numero1 = 5
var numero2 = 5

if numero2 > numero1 {
    print("Numero 2 e maior que numero 1")
} else if numero1 > numero2 {
    print("Numero 1 e maior que numero 2")
} else {
    print("Os numeros sao iguais")
}

//representando com operador ternario
idade = 2
idade >= 18 ? print("Maior de idade") : print("Nao e maior de idade")

//intervalo de valores
var intervaloFechado = 10...20 //inclui o 20
var intervaloSemiAberto = 10..<20 //vai de ate 19

var numero = 23

//usando switch
switch numero {
case 0...10:
    print("Numero esta entre 0 e 10")
case 10...20:
    print("Numero esta entre 10 e 20")
default:
    print("Numero e maior que 20")
}

//verificando multiplos valores
var animal = "Gato"

switch animal{
case "Cachorro", "Gato":
    print("Animal Domestico")
default:
    print("Animal Selvagem")
}

//case leting
switch numero {
case _ where numero % 2 == 0:
    print("Numero \(numero) Par")
case _ where numero % 2 != 0:
    print("Numero \(numero) Impar")
default:
    break
}

//gerando numeros aleatorios
var numeroAleatorio = Int.random(in: 0...100)
print(numeroAleatorio)

//exercicio 1:
    //Crie uma constante que armazene uma pergunta “Qual o valor de 8 x 2?” no formato String. A seguir, crie uma constante que armazene a resposta correta e uma constante que armazene a resposta do usuário;
let pergunta = "Qual o valor de 8 x 2?"
let resposta = 16

    //Além disso, crie uma variável do tipo inteiro que armazena a pontuação do usuário. Caso a resposta do usuário for igual a resposta correta, acrescente em 1 o valor da pontuação. Caso não for igual, diminua em 1 a pontuação. No final, imprima a pontuação do usuário.
var usuarioResposta: Int = 16
var pontuacao: Int = 0

if usuarioResposta == resposta {
    pontuacao += 1
    print("resposta Correta")
} else {
    pontuacao -= 1
    print("Resposta Errada")
}

//exercicio 2
    //Crie uma constante que armazene a sua idade;
let minhaIdade = 20

    //Escreva uma condicional que verifique se a sua idade está entre 0 e 13;
if minhaIdade > 0 && minhaIdade < 13 {
    print("Crianca")
} else if minhaIdade > 13 && minhaIdade < 18 {
    print("Adolescente")
} else {
    print("Adulto")
}

//exercicio 3
    //Crie uma constante que armazene a idade da pessoa;

    //Crie uma constante que armazene se a pessoa está com o RG em mãos;
let rgEmMaos = false

    //Caso ela tenha idade superior ou igual a 18 e esteja com o RG em mãos, ela pode entrar na festa (exiba no console “Pode entrar”). Caso contrário, não pode entrar (exiba no console “Não pode entrar”).
if minhaIdade > 18 && rgEmMaos {
    print("Pode entrar")
} else {
    print("Nao pode entrar")
}






