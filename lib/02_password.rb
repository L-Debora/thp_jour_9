require 'io/console' # permet d'appeler IO::console

def signup
  IO::console.getpass "Veuillez entrer un mot de passe :" # IO::consol.getpass rentre le mdp dans la console, le garde et de le cache 
end

def login (password)
    password_verification = IO::console.getpass "Veuillez confirmer votre mot de passe :"
    
    while password_verification != password
        password_verification = IO::console.getpass "Faux ! Essaie encore : "    
    end

    if password_verification == password
        puts "Petit génie tu as gagné le droit d'être redirigé vers l'écran d'accueil !"
    end
end

def welcome_screen
    puts "Bienvenue dans la zone secrète. Voici quelques secrets :"
    puts "le gras c'est la vie ! "
end

def perform
  password = signup
   login(password)
   welcome_screen
end

perform