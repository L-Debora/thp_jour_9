floor_count = 0

until floor_count == 10
    dice = rand(1..6)
    puts "Lance le dé : #{dice}"

    if dice == 5 || dice == 6
        puts "Tu montes d'une marche."
        floor_count += 1
        puts "Tu es à la marche suivante : #{floor_count}"
    
    elsif dice == 1 
        if floor_count == 0
            puts "Tu ne vas quand même pas aller plus bas !"
        else
            puts "Oh non !! Tu descends d'une marche."
            floor_count -= 1
            puts "Tu es à la marche precedente : #{floor_count}"
        end
    
    else
        puts "Malheureusement tu ne bouges pas."
        puts "Tu es à la marche : #{floor_count}"
    end
end

puts "Bravo tu as fait 10 ! le jeu est terminé"