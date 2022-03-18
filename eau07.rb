# ***** Majuscule *****
# Créez un programme qui met en majuscule la première lettre de chaque mot d’une chaîne de caractères. 
# Les autres lettres devront être en minuscules. 
# Les mots ne sont délimités que par un espace, une tabulation ou un retour à la ligne.
# Afficher error et quitter le programme en cas de problèmes d’arguments.

# Fonction utilisée : 
def first_upcase(string)
    i = 0
    array = string.split(' ')
    while (i < array.length)
        if (array[i].match(/[[:alpha:]]/))  # Met une majuscule si le string est un mot
            array[i].capitalize!
            i += 1 
        else
            i += 1
        end
    end
    array.join(' ')
end

# Partie 1: Gestion d'erreur
(puts "error" ; exit) if ARGV.length != 1

# Partie 2: Parsing
string = ARGV[0]

# Partie 3: Résolution
solution = first_upcase(string)

# Partie 4: Affichage
puts solution
