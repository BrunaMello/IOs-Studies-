//arrays
//nao pode ter valores mistos
var notas = [8.5, 9.0, 7.2, 6.0]
var array: [String] = []
var arrayVazio = Array<String>()

notas.isEmpty
arrayVazio.isEmpty
notas.count
notas.min()
notas.max()
notas.contains(9.0)
notas.firstIndex(of: 7.2)
notas[2]

//aplicando metodos no array
notas.append(4.5)
notas.insert(6.7, at: 2)
notas += [9.8]
print(notas)
notas.removeLast()
notas.removeFirst()
notas.remove(at: 3)
print(notas)

//percorrrer elementos do array
for i in 0..<notas.count {
    print(notas[i])
}

//obter elemento e index
for (index, elemento) in notas.enumerated(){
    print(index, elemento)
}

//sets
//dados desordenados, nao acessa por index, nao permite duplicados
var nomes: Set<String> = ["Bruna", "marcelo", "Caio", "Joao"]
nomes.contains("Caio")

nomes.insert("Bianca")
nomes.remove("Bruna")
print(nomes)

//tuplas
//valores e tipos diferentes
typealias Coordernadas = (x: Int, y: Double, z: Double)
var coordenadas: Coordernadas = (x: 5, y: 3.5, z: 8.0)
coordenadas.0
coordenadas.1
coordenadas.x
coordenadas.y
coordenadas.z

var pessoa = (nome: "Bruna", idade: 22)
pessoa.nome

var (nome, idade) = pessoa
print(nome)
print(idade)

//dicionarios
//nao pode ter chaves duplicadas,
var pontuacao = [
    "joao": 32,
    "bruna": 10,
    "marcelo": 15
]

//dicionario vazio
var pessoas: [String: Int] = [:]

//reservar espacos para dicionarios
pessoas.reserveCapacity(10)

print(pontuacao["bruna"])

pontuacao.isEmpty
pontuacao.count
pontuacao.capacity
pessoas.capacity
pontuacao["dani"] = 30
pontuacao.updateValue(60, forKey: "bruna")
print(pontuacao)
pontuacao["bruna"] = nil
print(pontuacao)
pontuacao.removeValue(forKey: "caio")
print(pontuacao)

for (nome, pontuacao) in pontuacao {
    print("Usuario \(nome) tem \(pontuacao) pontos.")
}

for nome in pontuacao.keys {
    print(nome)
}

//exercicios
//Escreva uma função que receba um array de notas de um determinado aluno e retorne a média aritmética dessas notas.

func mediaNotas(notas: [Double]){
    var total: Double = 0
    var tamanhoArray = notas.count
    
    for nota in notas {
        total = total + nota
    }
    
    var media = total / Double(tamanhoArray)
    
    print(media)
}


//Dado um dicionário com duas letras que representam um estado como chave e o nome inteiro do estado como valor, escreva uma função que exiba todos os estados cujo nome tenha mais que 8 caracteres.

var estadosBrasil = [
    "Acre": "AC",
    "Alagoas": "AL",
    "Amapa": "AM",
    "Amazonas": "AM",
    "Bahia": "BA",
    "Ceara": "CE",
    "Distrito Federal": "DF",
    "Espirito Santo": "ES",
    "Goias": "GO",
    "Maranhao": "MA",
    "Mato Grosso": "MT",
    "Mato Grosso do Sul": "MS",
    "Minas Gerais": "MG",
    "Para": "PA",
    "Paraiba": "PB",
    "Parana": "PR",
    "Pernambuco": "PE",
    "Piaui": "PI",
    "Rio de Janeiro": "RJ",
    "Rio Grande do Norte": "RN",
    "Rio Grande do Sul": "RS",
    "Rondonia": "RO",
    "Roraima": "RR",
    "Santa Catarina": "SC",
    "Sao Paulo": "SP",
    "Sergipe": "SE",
    "Tocantins": "TO"
    ]










