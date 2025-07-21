# Função recursiva para calcular a soma dos elementos de uma lista
# Base case: soma de uma lista vazia = 0
# Recursive case: soma([x, xs...]) = x + soma(xs)
function somaLista(arr::Vector{Int})::Int
    if isempty(arr)
        return 0
    else
        return arr[1] + somaLista(arr[2:end])
    end
end

println("Soma da lista [1, 2, 3, 4]: ", somaLista([1, 2, 3, 4]))  # Saída: 10