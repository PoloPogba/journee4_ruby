puts "Bienvenue dans le super méga hyper trop top game"
puts "J'espère que vous êtes prêt..."
puts "Vous allez devoir monter la dune du Pyla en 10 étages"
puts "Vous êtes au rez de chaussez"
puts ""
def init                                # méthode pour demander a l'utilisateur d'appuyer sur un bouton
    touche="l"                          
    if @etage < 10                      #si le niveau n'est pas fini
        puts "Appuyer sur L pour lancer le dé"
        jet=gets.chomp
    end
    if jet == touche
         @ok = 1   #appui sur L
    else @ok =0    #appui sur autre touche
       
    end
end

def lancer   #méthode pour faire un dé
    @de =rand(1..6)
    puts @de
end

def gagne   #méthode si l'utilisateur gagne
    @etage=@etage+1
    puts"Bravo, vous arrivez à l'étage " "#{@etage}"
end

def presque #méthode si l'utilisateur ne gagne pas mais ne perd pas
        puts "Bien essayé, mais vous prenez une pose à l'étage " "#{@etage}"
end
def dommage # méthode si l'utilisateur perd
    @etage=@etage-1
    puts "DAMN, un gamin bien ambitieux vous croche le pied, vous êtes relégué au niveau inférieur, l'étage numéro:""#{@etage}"
end

def rien #méthode si l'uitilisateur perd au rez de chaussé
    puts " Vous êtes déja au rez de chaussé, recommencez"
end


    def jeux  #méthode du jeux avec les différents cas de figure et un retour au début
        i=1
        while i==1 && @etage!=10
    
            if @ok==1 
            
                puts"C'est parti : "
                lancer
    
                if @de > 4  
                gagne
                init
                elsif @de > 1 && @de < 5  
                presque
                init
                elsif @de==1 && @etage > 0
                dommage
                init
                elsif @de ==1 && @etage==0
                rien    
                init
                end 
    
    
            elsif @ok==0 
                init
            end
    
        end
    end



@etage=0  # variable numéro de létage
init      # Commencez
jeux      # Le jeux !
if @etage == 10  # fin du jeu
    puts "Bravo, vous avez gagnez la partie !!!"
end