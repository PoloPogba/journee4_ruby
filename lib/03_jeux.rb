puts "Bienvenue dans le super méga hyper trop top game"
puts "J'espère que vous êtes prêt..."
puts "Vous allez devoir monter la dune du Pyla en 10 étages"
puts "Vous êtes au rez de chaussez"
puts ""
def init 
    touche="l"
    puts "Appuyer sur L pour lancer le dé"
    jet=gets.chomp
    
    if jet == touche
        @ok = 1
    else @ok =0
       
    end
end

def lancer 
    @de =rand(1..6)
    puts @de
end

 


 etage=0
init
i=1

if etage < 10

while i == 1
    
    
    if @ok==1 
    #i=i+1
    
    
    puts"C'est parti : "
    
    lancer
    
        if @de > 4
            etage=etage+1
            puts"Bravo, vous arrivez au "+"#{etage}"" etage"
            init
        elsif @de > 1 && @de < 5
            puts "Bien essayer, mais vous prenez une pose au " "#{etage}" " etage"
            init
        elsif @de==1 && etage > 0
            etage=etage-1
            puts "DAMN, un gamin bien ambitieux vous croche le pied, vous êtes relégué au niveau inférieur, l'étage numéro:""#{etage}"
            init
        else @de ==1 && etage==0
            puts " Vous êtes déja au rez de chaussé, recommencez"
            init
        end 
    
    
    else @ok==0  
    init
    end
    
end

else etage > 9
    puts "Bravo, vous avez gagnez la partie en" "#{essai}" "essais"

end