# ***** Entre min et max *****
# Créez un programme qui affiche toutes les valeurs comprises entre deux nombres dans l’ordre croissant. 
# Min inclus, max exclus.
# Afficher error et quitter le programme en cas de problèmes d’arguments.

# Fonctions utilisées :
def min_is_big(min, max)
    if (min > max)
        print max ; print ' '
        while (min > max + 1)
            print max += 1
            print ' '
        end
        puts ; exit
    end
end

def min_max(min, max)
    min_is_big(min, max)
    print min ; print ' '
    while (min < max - 1)
        print min = min + 1
        print ' '
    end
    puts ; exit
end

# Partie 1: Gestion d'erreur
(puts "error" ; exit) if ARGV.length != 2

# Partie 2: Parsing
number1 = ARGV[0].to_i
number2 = ARGV[1].to_i

# Partie 3: Résolution
solution = min_max(number1, number2)

# Partie 4: Affichage
puts solution
