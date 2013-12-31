def game_over
    print "\n\nyou died!! :(\n\n#####################\n### GAME OVER !!! ###\n##################### \n\n"
end

def inicio
    print "

    Estas en tierras lejanas, tu mision es llegar al final
    para ello deveras passar por diversas aventuras, en las que podras
    morir\n\n"

    print "-->"
    action = gets.chomp

    if action == "oeste"
        oceano()
    elsif action == "norte"
        playa()
    end

end

def oceano
    print "\n\nEstas en el agua en mita del oceano\n\n"
    print "-->"
    action = gets.chomp

    if action == "sur" or action == "oeste"
        game_over()

    elsif action == "norte"
        print "Nadas hasta la playa\n\n"
        playa()
    end
end

def playa

    print "Algo"
    print "-->"
    action = gets.chomp

    if action == "sur"
        puts "Vuelves al oceano e mueres ahogado por la marea"
        game_over()

    elsif action == "este"
        arenas_movedizas()

    elsif action == "norte"
        monstruo_1()

    elsif action == "oeste"
        charca()
    end
end


def arenas_movedizas
    print "Vas hacia el este e caes en arenas movedizas, debes cojer una herramientas\n"

    herramienta = " "
    veces = 0

    while veces >= 3

        herramienta = gets.chomp
        if herramienta == "martillo" or herramienta != "hacha" or herramienta != "tronco"

            break
        end
        veces += 1
    end
/
    while herramienta != "martillo" or herramienta != "hacha" or herramienta != "tronco"

        herramienta = gets.chomp
        veces += 1

        if veces == 3
            game_over()
            break
        end
    end /

    if herramienta == "tronco"
        print "sales de las arenas movedizas\n"
        monstruo_1()

    elsif herramienta == "martillo" and veces >= 2
        print "muy lejos, te mueres"
        game_over()

    elsif herramienta == "hacha"
        print "el hacha te corta la mano y cojes un tronco y consigues salir"
        monstruo_1()
    end

end

def charca
    print "llegas a una charca llena de cocodrilos tienes que matarlos con un arma\n"

    arma = " "
    veces = 0
    while arma != "pistola" or arma == "red electrica"

        arma = gets.chomp
        if veces == 2
            break
            game_over()
        end
    end

    if arma == "pistola"
        print "matas a los cocodrilos y sigues para el norte, encuentras un tronco"
        monstruo_1()

    elsif arma == "red electrica"
        print "mueres electrocutado!!!\n"
        game_over()
    end
end

def monstruo_1
    puts "Tienes un monstruo delante, lo tienes que matar!!"

    player_life = 100
    monster_life = 100
    monster_attack = 25

    while player_life > 0 or monster_life 0

        ataque = gets.chomp

        if ataque == "ataque de lado"
            monster_life -= 20

        elsif ataque == "ataque de frente"
            monster_life -= 30

        elsif ataque == "super ataque"
            monster_life -= 50
        end
        player_life -= monster_attack
    end

    if player_life <= 0
        game_over()

    else
        print "Bien echo, lo as matado"
        jungla()
    end
end


inicio()
