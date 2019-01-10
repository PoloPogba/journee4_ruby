# Pyramide de ramsès 

puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
def half_pyramid
    floor = gets.chomp.to_i
    nb = 0
    espace=" "
    pierre= "#"
    i=1

    if floor >= 1 && floor <= 25     # Conditions IF pour un nombre entre 1 et 25 
        puts "Voici la pyramide :"
            for n in i..floor           # Boucle for pour effectuer une action à chaque étage
                nbespace=espace*(floor-n)
                nbpierre=pierre*n
                puts "#{nbespace}"+"#{nbpierre}" 
                nb=nb+1

            end
    else 
        puts " Dommage vous n'avez pas choisi un nombre en 1 et 25"

    end
end

half_pyramid