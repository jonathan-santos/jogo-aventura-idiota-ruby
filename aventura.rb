resposta = nil

while !resposta
    puts `clear` + "
Você está em uma floresta e a sua frente tem uma estrada, o que você faz?\n
    1: Passa por ela
    2: Senta e chora por algum motivo
    3: Decide ser um rebelde e passa a andar fora da estrada
O que você irá fazer?"
    resposta = gets.chomp().to_i()

    if resposta == 1 then
        puts `clear` + "Andando pela estrada..."
    elsif resposta == 2 then
        puts `clear` + "Você está chorando na estrada"
    elsif resposta == 3 then
        puts `clear` + "A polícia da grama da floresta te para e te dá uma multa"
    else
        puts `clear` + "Resposta inválida, tente novamente"
        resposta = nil
    end
end

resposta = nil
count = 0
while !resposta
    puts "..."
    count += 1
    if count == 10
        count = 0
        puts "De repente, mais que repente, você morre\n\n\n"
        sleep(3)
        puts "FIN\n\n\n"
        sleep(3)
        puts "Digite qualquer coisa para terminar o jogo..."
        gets()
        resposta = 1
    end
    sleep(0.5)
end