function esperar()
    println("Pressione ENTER para continuar...")
    readline()
end

# Soma a = a + b (simulando multiplicação como soma repetida)
function multiplicar(a::Int, b::Int, acumulador::Int = 0)::Int
    println("Multiplicando $a * $b com acumulador = $acumulador")
    esperar()
    if b == 0
        println("-> b chegou a 0, resultado parcial da multiplicação: $acumulador")
        esperar()
        return acumulador
    else
        println("-> Somando $a ao acumulador. Novo acumulador = $(acumulador + a)")
        esperar()
        return multiplicar(a, b - 1, acumulador + a)
    end
end

# Fatorial com multiplicação simulada
function fatorial_aux(n::Int, resultado::Int)::Int
    println("Calculando fatorial: n = $n, resultado acumulado = $resultado")
    esperar()
    if n == 0
        println("-> n chegou a 0. Fatorial completo: $resultado")
        return resultado
    else
        println("-> Precisa calcular $resultado * $n")
        produto = multiplicar(resultado, n)
        return fatorial_aux(n - 1, produto)
    end
end

function fatorial_normal(n::Int)::Int
    if n < 0
        error("Entrada deve ser não negativa")
    end
    return fatorial_aux(n, 1)
end

# Execução com passo-a-passo
println("Vamos calcular o fatorial de 4 passo a passo...")
println()
resultado = fatorial_normal(4)
println("\nResultado final: fatorial(4) = $resultado")
