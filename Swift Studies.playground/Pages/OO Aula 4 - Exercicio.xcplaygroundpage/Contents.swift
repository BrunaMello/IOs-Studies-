/* Crie um protocolo chamado “Area” que define uma propriedade que pode apenas ser lida, e não setada, que corresponde a área de determinada figura, com o tipo Double. Essa propriedade é definida como uma propriedade computada, mas lembre-se que no protocolo não há diferenciação entre propriedades armazenadas ou computadas, você apenas define uma propriedade.
 
 E então, crie duas classes (ou structs) que implementem o protocolo Area: Quadrado e Triangulo. Implemente o cálculo da área de acordo com cada figura (cada classe precisa receber os parâmetros necessários para o cálculo) e por fim, imprima o valor de cada área no console.

*/

protocol Area {
    var areaFigura: Double {get set}
    
}

class Quadrado: Area {
    var areaFigura: Double = 0.0
    
    
    func calculoArea(_ valorLados: Double) -> Double {
        areaFigura = valorLados * valorLados
        return areaFigura
    }
    
    
}

class Triangulo: Area {
    var areaFigura: Double = 0.0
    
    func calculoArea(_ base: Double, _ altura: Double) -> Double {
        areaFigura = (base * altura) / 2
        return areaFigura
    }
    
}

var triangulo = Triangulo()
triangulo.calculoArea(12, 15)

var quadrado = Quadrado()
quadrado.calculoArea(10)


/* De acordo com esse código, crie uma função que recebe como parâmetro um array do tipo “Moeda”. Faça a soma de todos os valores desse array segundo o raw value e retorne essa soma.
 
 No caso do exemplo acima, o que deve ser retornado da função é o valor 51, que é a soma de todas as moedas desse array declarado.

*/

enum Moeda: Int {
  case UmCentavo = 1
  case CincoCentavos = 5
  case DezCentavos = 10
  case VinteCincoCentavos = 25
  case CinquentaCentavos = 50
}

let moedas: [Moeda] = [.CincoCentavos, .UmCentavo, .CincoCentavos, .VinteCincoCentavos, .CincoCentavos, .DezCentavos]


func somaMoeda() -> Int {
    var valorTotal: Int = 0
    for moeda in moedas {
        var moedaValor = moeda.rawValue
        valorTotal += moedaValor
    }
    return valorTotal
}

somaMoeda()
