# Função recursiva para calcular o n-ésimo número da sequência de Fibonacci
# Base case: fib(0) = 0, fib(1) = 1
# Recursive case: fib(n) = fib(n-1) + fib(n-2)
function fib(n::Int)::Int
    if n == 0
        return 0
    elseif n == 1
        return 1
    else
        return fib(n - 1) + fib(n - 2)
    end
end

println("Fibonacci de 6: ", fib(6))    # Saída: 8