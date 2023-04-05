// loop e for (sabe quantas vezes vamos executar algo)

var soma = 0

for i in 1...10{
    soma += i
}

print(soma)

//loops while e repeat while (
var count = 1

while count <= 10 {
    print("Eu amo Swift")
    count += 1
}

repeat {
    print("Eu amo Swift")
    count += 1
} while count <= 10


//break e continue dentro dos lacos de repeticoes
while count <= 10 {
    count += 1
    if count == 5 {
        continue //forcar a proxima interacao do looping
    }
    print(count)
}

//exercicio
    //Agora que você já aprendeu sobre os laços de repetição e intervalos de valores, o seu desafio é desenvolver um código que vá do número 1 até o número 10, imprimindo no console apenas os números pares desse intervalo, ou seja, será imprimido apenas os valores 2, 4, 6, 8, e 10.
var contador = 0
while contador < 11 {
    contador += 1
    if contador % 2 == 0 {
        print(contador)
    }
}


