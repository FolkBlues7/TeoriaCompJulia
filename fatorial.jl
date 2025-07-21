# Função recursiva para calcular o fatorial de um número n
# Base case: fatorial(0) = 1
# Recursive case: fatorial(n) = n * fatorial(n-1)
function fatorial(n::Int)::Int
    if n == 0
        return 1
    else
        return n * fatorial(n - 1)
    end
end

# Exemplos de uso
println("Fatorial de 5: ", fatorial(5))  # Saída: 120