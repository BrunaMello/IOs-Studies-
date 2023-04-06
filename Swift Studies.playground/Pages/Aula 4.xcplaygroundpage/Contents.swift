//funcoes
//usar _ para omitir o nome
//com == argument label
func soma(_ numero1: Int, com numero2: Int) {
    var resultado = numero1 + numero2
    print(resultado)
}

//funcao com retorno
func soma2(_ numero1: Int, _ numero2: Int) -> Int{
    var resultado = numero1 + numero2
    return resultado
}

var resultado = soma2(5,3)
print(resultado)

func verificaAdulto (_ idade: Int) -> Bool {
    return idade >= 18
}

verificaAdulto(17)
verificaAdulto(21)

//passsando parametro por referencia (parametro pode ser alterado fora da funcao)
func somaNumero(_ numero: inout Int) {
    numero += 1
    print(numero)
}
var valor = 10
somaNumero(&valor)
print(valor)


//opcionais (?) nil == null
var telefone: String?
telefone = "99999" //vai retornar dentro do Optional()
print(telefone)

//desembrulhando a variavel nao recomendado
print(telefone!)

//desembrulhando de forma segura
if telefone != nil {
    print(telefone!)
}

var celular: String?
celular = "8888"


//optional binding
if let telefoneDesembrulhado = telefone,
let celular = celular{ //somente dentro do escopo
    print(telefoneDesembrulhado)
    print(celular)
}

//guard let
func autenticar(usuario: String?, senha: String?) {
    guard let usuario = usuario, let senha = senha else {
        return
    }
    print(usuario)
    print(senha)
}

autenticar(usuario: "Bruna", senha: nil)

//optional change
print(telefone?.first) //retornar dentro do optional

if let primeiroCaractere = telefone?.first {
    print(primeiroCaractere)
}

//nil coalescing operator
print(telefone ?? "Nao ha valor para telefone")

//outros tipos de retornos opcionais
var numeroString = "Bruna"
var numero = Int(numeroString)
//print(numero)

//exercicio 1
    //Escreva uma função que receba um parâmetro do tipo Int e verifique se esse número é primo ou não. O retorno dessa função pode ser um booleano, representando true se for primo ou false se não for primo.

func numeroPrimo(_ numero: Int) -> Bool {
    if numero <= 1 {
           return false
       }
    
       for i in 2..<numero  {
          if numero % i == 0 {
             return false
           }
       }
       return true
}

//Crie uma função que receba um parâmetro que representa o nome de uma pessoa. Esse parâmetro é um **opcional**, ou seja, ele pode conter um valor ou ser nulo.
//Faça o tratamento correto dessa opcional:
//Caso seja nulo, exiba no console “Nome não especificado”;
//Caso contenha algum valor, exiba no console esse valor.

func nomePessoa(_ nome: String?){
    guard let nome = nome else {
        return print("Nome nao identificado")
    }
    
    print(nome)
}

//Imagine que você foi ao restaurante com um quantidade “n” de amigos e gastaram ao total um valor x. Faça um programa que contenha uma função que calcule quanto cada pessoa deva pagar.
//A função deve receber dois parâmetros: o valor total da conta e o número total de pessoas que irão dividir a conta;
//Não se esqueça dos 10% do garçom! Faça o cálculo em cima do valor total;
//Retorne quanto cada pessoa deve pagar e exiba esse valor no console, fora da função.

func dividirConta(_ numeroPessoas: Int, _ totalConta: Double) {
    
    var total: Double = 0
    
    if numeroPessoas != 0 && numeroPessoas > 0 {
        var garcom = totalConta * 0.10
        var totalGarcom = garcom + totalConta
        total = (totalGarcom / Double(numeroPessoas))
    } else {
        print("Nao ha pessoas suficientes")
    }
    
    print(total)
}

dividirConta(4, 120)


