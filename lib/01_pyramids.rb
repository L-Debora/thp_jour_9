=begin
def full_pyramid
    puts "Salut, bienvenue dans la pyramide ! Combien d'étages veux-tu ?"
    print ">"
        ask_stage_number = gets.chomp.to_i
    

    if ask_stage_number > 25 || ask_stage_number < 1
       puts "On a dit compris entre 1 et 25"
    else 
    
       puts "Voici la pyramide :"
       diese_count = 1
       number_of_spaces = ask_stage_number -1 #compte les espaces à mettre en retirant 1 pour le #

       ask_stage_number.times do 
           print " " * (number_of_spaces) #nombre d'espaces sur la gauche
           print "#" * diese_count
           puts "  " * (number_of_spaces) #nombre d'espaces sur la droite
           diese_count += 2 #cette ligne permet pour le tour prochain d'ajouter +2 aux dieses
           number_of_spaces -= 1 #cette ligne enleve 1 espace au tour prochain
       end
    end
end

full_pyramid
=end

# wtf pyramide

def wtf_pyramid
    puts "Entre un nombre :"
    ask_stage_number = gets.chomp.to_i

    while ask_stage_number %2 == 0 || ask_stage_number > 25 || ask_stage_number < 1 #permet de gerer les cas speciaux (pair, chiffre entre 1 et 25)
        puts "Entre un nombre impair et compris entre 1 et 25:"
        ask_stage_number = gets.chomp.to_i
    end
    diese_count = 1
    space_number = ((ask_stage_number - 1) / 2) #permet d'avoir le nombre d'espaces a gauche et a droite
    while diese_count < ask_stage_number
        print " " * (space_number) #nombre d'espaces sur la gauche
        print "#" * (diese_count)
        puts " " * (space_number)#nombre d'espaces sur la droite
        diese_count += 2
        space_number -= 1
    end
    while diese_count >= 1
        print " " * (space_number) #nombre d'espaces sur la gauche
        print "#" * (diese_count)
        puts " " * (space_number)#nombre d'espaces sur la droite
        diese_count -= 2 #cette ligne permet pour le tour prochain d'ajouter -2 aux dieses
        space_number += 1 #cette ligne d'ajouter 1 espace au tour prochain
    end
 end
 wtf_pyramid