# Pyramide de ramsès 

puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
def half_pyramid
    floor = gets.chomp.to_i
    nb = 0
    espace=" "
    pierre= "#"
    i=1
    demifloor=floor/2
    floordemi=demifloor+1

   if floor >= 1 && floor <= 25 
   
             if   (floor % 2 ==1)     # Conditions IF pour un nombre entre 1 et 25 
                puts "Voici la pyramide :"
        
                    for n in i..floordemi 
                                        # Boucle for pour effectuer une action à chaque étage
                    nbespace=espace*(floordemi-n)
                    nbpierre=pierre*(n+nb)
                    puts "#{nbespace}"+"#{nbpierre}"+"#{nbespace}"  
                    nb=nb+1
                    end
                else  
                    puts " Dommage, votre nombre n'est pas un nombre impair"        
                end
    
                i=0
                reversefloor=demifloor-1
                # A faire pour effacer la ligne identique et sauter une répétition du for

            if  (floor % 2 ==1)    # Conditions IF pour un nombre entre 1 et 25 
                
                for n in (reversefloor).downto(i)           # Boucle for pour effectuer une action à chaque étage
                nbespace=espace*(demifloor-n)
                nbpierre=pierre*((2*n)+1)
                puts "#{nbespace}"+"#{nbpierre}"+"#{nbespace}"  
                nb=nb+1

                end
            end 
            
    else  
        puts "Dommage vous n'avez pas choisi un nombre en 1 et 25"

    end

end

half_pyramid
    