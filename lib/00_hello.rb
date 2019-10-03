
def ask_first_name 
   puts "Quel est ton prénom ?"
   print ">"
   name = gets.chomp
   return name
end

def say_hello (first_name)
   puts "Bonjour #{first_name}"
end


def perform
   name = ask_first_name
   say_hello(name)
end 

perform