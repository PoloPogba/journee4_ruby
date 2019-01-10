def signup
    puts"Bienvenue à la NSA, rentrez votre mot de passe :"    #METHODE pour stocker un mot de passe  
    @mot_de_passe_=gets.chomp
end

def login 
    puts "Veuillez confirmer votre mot de passe :" # METHODE pour demander le mdp et le stocker dans une variable
    @verif=gets.chomp
end
def ecran_secret  #METHODE pour l'écran secret
    puts""
    puts "BRAVO VOUS VENEZ DENTEZ DANS LENDROIT SECRET DE LA NSA..."
    puts "================================================="
    puts "TRUMP TWITTER MDP : PayeTonMur666"
    puts "NUCLEAR CODE : 8UY8B12HNVB45RTDNALDZJ881HGFCDDENBVDAI16172619HDAZGIDZA987"
    puts "COMPTE BANCAIRE THP : 98875102120998 CODE : NombreADixChiffre"
    puts "================================================="
    puts "SURTOUT...N'EN PARLEZ A PERSONNE.. !"
end

def perform  # Execution des méthodes 
    signup
    login
end

perform

i=0    # compteur
while i == 0             # boucle tant que le mot de passe est incorect (i=0)
    if  @mot_de_passe_ == @verif  # conditions de vérification
        ecran_secret
        i=i+1
        return i
    else puts "FAUX, recommencez..."  # FAUX recommencez
    
        login
    end
    
end