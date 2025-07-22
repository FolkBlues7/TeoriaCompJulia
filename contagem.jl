function pausar()
    print("Pressione Enter para continuar...")
    readline()
end

function reconhecer_anbncn_interativo(fita::Vector{Char})::Bool
    println("Iniciando máquina para fita: ", join(fita))
    pausar()

    # Registradores
    RA = 0  # contador de 'a'
    RB = 0  # contador de 'b'
    RC = 0  # contador de 'c'
    P  = 1  # ponteiro da fita

    println("\nRegistradores iniciados:")
    println("RA = $RA, RB = $RB, RC = $RC, P = $P")
    pausar()

    println("\nEtapa 1: Contando 'a's")
    while P <= length(fita) && fita[P] == 'a'
        println("Símbolo na posição $P é 'a'")
        RA = RA + 1
        println("Incrementa RA: RA = $RA")
        P = P + 1
        println("Avança ponteiro: P = $P")
        pausar()
    end

    println("\nEtapa 2: Contando 'b's e subtraindo de RA")
    while P <= length(fita) && fita[P] == 'b'
        println("Símbolo na posição $P é 'b'")
        RB = RB + 1
        println("Incrementa RB: RB = $RB")
        if RA == 0
            println("Erro: RA == 0, não há 'a' correspondente.")
            return false
        end
        RA = RA - 1
        println("Subtrai 1 de RA: RA = $RA")
        P = P + 1
        println("Avança ponteiro: P = $P")
        pausar()
    end

    if RA != 0
        println("Erro: Sobrou 'a' (RA != 0).")
        return false
    end

    println("\nEtapa 3: Contando 'c's e subtraindo de RB")
    while P <= length(fita) && fita[P] == 'c'
        println("Símbolo na posição $P é 'c'")
        RC = RC + 1
        println("Incrementa RC: RC = $RC")
        if RB == 0
            println("Erro: RB == 0, não há 'b' correspondente.")
            return false
        end
        RB = RB - 1
        println("Subtrai 1 de RB: RB = $RB")
        P = P + 1
        println("Avança ponteiro: P = $P")
        pausar()
    end

    if RB != 0
        println("Erro: Sobrou 'b' (RB != 0).")
        return false
    end

    if P <= length(fita)
        println("Erro: Fita não terminou. Sobrou símbolo: ", fita[P:end])
        return false
    end

    println("\nCadeia aceita! RA = $RA, RB = $RB, RC = $RC, P = $P")
    return true
end


# Helper para transformar string em vetor de caracteres
to_fita(cadeia::String) = collect(cadeia)

# Descomente UM por vez para apresentação:

#resultado = reconhecer_anbncn_interativo(to_fita(""))
# resultado = reconhecer_anbncn_interativo(to_fita("abc"))
 resultado = reconhecer_anbncn_interativo(to_fita("aabbcc"))
# resultado = reconhecer_anbncn_interativo(to_fita("aaabbbccc"))

# resultado = reconhecer_anbncn_interativo(to_fita("abbc"))       # inválido
# resultado = reconhecer_anbncn_interativo(to_fita("aabbc"))      # inválido
# resultado = reconhecer_anbncn_interativo(to_fita("aabbccd"))    # inválido
# resultado = reconhecer_anbncn_interativo(to_fita("ab"))         # inválido
# resultado = reconhecer_anbncn_interativo(to_fita("acb"))        # inválido

println("\nResultado final: ", resultado)
