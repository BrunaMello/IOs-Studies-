//Exercicios
class Calculadora {
    var num1: Double
    var num2: Double
    
    init() {
        num2 = 0.0
        num1 = 0.0
    }
    
    func soma(num1: Double, num2: Double) -> Double{
        var result = num1 + num2
        return result
    }
}

var calcBruna = Calculadora()
print(calcBruna.soma(num1: 10.3, num2: 45.6))
