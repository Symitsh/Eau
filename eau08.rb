# ***** Chiffres only *****
# Créez un programme qui détermine si une chaîne de caractères ne contient que des chiffres.
# Afficher error et quitter le programme en cas de problèmes d’arguments.

# Fonction utilisée :
def alphabetic(string)
    if string[0].match(/[[:alpha:]]/)  # expression régulière pour savoir si c'est un caractère alphabétique
        return false
    else return true 
    end
end

# Partie 1: Gestion d'erreur
(puts "error" ; exit) if ARGV.length != 1

# Partie 2: Parsing
string = ARGV

# Partie 3: Résolution
solution = alphabetic(string)

# Partie 4: Affichage
puts solution
