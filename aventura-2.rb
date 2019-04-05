def novaMensagem(mensagem)
    puts `clear` + mensagem
end

def novaAcao(mensagem, acoes)
    resposta = nil
    while true
        novaMensagem(mensagem)
        resposta = gets.chomp().to_i()
        if resposta == 1
            novaMensagem(acoes[0])
            return 1
        elsif resposta == 2
            novaMensagem(acoes[1])
            return 2
        elsif resposta == 3
            novaMensagem(acoes[2])
            return 3
        else
            puts "Reposta inválida, tente novamente"
            sleep(3)
        end
    end
end

def repetir(quantidadeARepetir, mensagemARepetir)
    for i in 0..quantidadeARepetir
        puts mensagemARepetir
        sleep(0.75)
    end
end

res1 = novaAcao("
Você está em uma floresta e a sua frente tem uma estrada, o que você faz?\n
    1: Passa por ela
    2: Senta e chora por algum motivo
    3: Decide ser um rebelde e passa a andar fora da estrada
O que você irá fazer?
", [
    "Andando pela estrada...",
    "Você está chorando na estrada",
    "A polícia da grama da floresta te para e te dá uma multa"
])

if res1 == 1
    repetir(10, "Você continua andando na estrada")
    puts "Até que de repente, mais que repente, um meteoro cai em você e você morre!"
elsif res1 == 2
    repetir(5, "Você continua a chorar na estrada")
    puts "Até que de repente, mais que repente, você tem um ataque cardíaco e você morre!"
elsif res1 == 3
    puts "Você reclama com o policial da floresta"
    repetir(5, "Você continua a reclamar com o policial da floresta")
    puts "Até você desiste de reclamar com os policiais da floresta, mas de repente, mais que repente, você bate com o dedinho em uma pedra no caminho e sente uma dor como nunca sentiu antes e você morre!"
end

sleep(3)
puts "FIN\n\n\n"
sleep(3)
puts "Digite qualquer coisa para terminar o jogo..."
gets()