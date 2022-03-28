# ***** Combinaisons de 3 chiffres *****
# Créez un programme qui affiche toutes les différentes combinaisons possibles de trois chiffres dans l’ordre croissant.

# Fonctions utilisées :
def print_result(tab)
    while increment_is_true(tab)
        print "#{tab[0]}#{tab[1]}#{tab[2]}"
        (puts ; exit) if tab == [7, 8, 9]
        print ", "
    end
end

def increment_is_true(tab)
    if tab[2] < 9
        tab[2] = tab[2] + 1         
    elsif tab[1] < 8
        tab[1] = tab[1] + 1         
        tab[2] = tab[1] + 1         
    elsif tab[0] < 7
        tab[0] = tab[0] + 1
        tab[1] = tab[0] + 1
        tab[2] = tab[1] + 1
    else 
        return false
    end
    return true
end

# Partie 1: Gestion d'erreur
(puts "error: wrong number of arguments"; exit) if ARGV.size != 0

# Partie 2: Parsing
a, b, c = 0, 1, 1
tab = [a, b, c]

# Partie 3 Résolution
solution = print_result(tab)

# Partie 4: Affichage
puts solution 
