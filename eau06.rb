# ***** Majuscule sur deux *****
# Créez un programme qui met en majuscule une lettre sur deux d’une chaîne de caractères. 
# Seule les lettres (A-Z, a-z) sont prises en compte.
# Afficher error et quitter le programme en cas de problèmes d’arguments.

# Fonction utilisée : 
def majuscule(str)
    lettre = ''
    i = 0
    j = 0
    while (i < str.length)
        if (str[i] != ' ')
            if (j % 2 == 0)
                lettre = lettre + str[i].upcase
            else
                lettre += str[i].downcase
            end
            j += 1
            if !str[i].match(/[[:alpha:]]/)     # Si ce n'est pas un caractère alphabétique j'incrémente j
                j += 1
            end
        else
            lettre += ' '
        end
        i += 1
    end
    lettre
end

# Partie 1: Gestion d'erreur
(puts "error" ; exit) if ARGV.length != 1
(puts "error" ;exit) if !ARGV[0].match(/[[:alpha:]]/)   # Si ce n'est pas un caractère alphabétique puts "error"

# Partie 2: Parsing
phrase = ARGV[0].to_s

# Partie 3: Résolution
solution = majuscule(phrase)

# Partie 4: Affichage
puts solution
