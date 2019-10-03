def throw_dice
    dice = rand(1..6)
    puts "Lance le dé : #{dice}"
end

def game(dice)
    floor_count = 0

    #while floor_count < 10
    
    if dice == 5 || dice == 6
        puts "Tu montes d'une marche."
        puts "Tu es à la marche suivante : #{floor_count}"
        puts "Lance à nouveau le dé : #{dice}"
        floor_count += 0
    
    elsif dice == 1 
        if floor_count == 0
            puts "Tu ne vas quand même pas aller plus bas !"
        end
        puts "Oh non !! Tu descends d'une marche."
        puts "Tu es à la marche suivante :#{floor_count}"
        puts "Lance à nouveau le dé : #{dice}"
        floor_count -= 2
    
    else
        puts "Malheureusement tu ne bouges pas."
        puts "Tu es à la marche suivante : #{floor_count}"
        puts "Lance à nouveau le dé : #{dice}"
        floor_count -= 1
    end
    floor_count += 1
end
#end

def perform
    dice = throw_dice
    game(dice)
end

perform