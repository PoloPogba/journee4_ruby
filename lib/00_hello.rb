# programme qui dit bonjour à l'utilisateur

def say_hello (first_name) # définition de la méthode qui affiche bonjour + l'argument non assigné au début
	puts "Bonjour " + "#{first_name}"
	
end

def ask_first_name        # méthode qui demande le nom et retourne la valeur
	puts "Quel est votre nom ?"
	name = gets.chomp.to_s
	return name
end


jack = ask_first_name  # on met la méthode dans une variable jack
say_hello(jack)		   # on utilise cette variable jack pour la méthode say_hello




