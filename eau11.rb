# ***** Différence minimum absolue *****
# Créez un programme qui affiche la différence minimum absolue entre deux éléments d’un tableau constitué 
# uniquement de nombres. Nombres négatifs acceptés.
# Afficher error et quitter le programme en cas de problèmes d’arguments.

# Fonctions utilisées :
def convert_integer_array(my_string_array)
    integer_array = []
    my_string_array.each { |element| integer_array << element.to_i }
    abs_minimum_calcul(integer_array)
end

def abs_minimum_calcul(array)
    array_two = []
    i = 0
    while (i <= array.length-1)
        j = 0
        while (j <= array.length-1)
            if  (array[i] > array[j])
                substraction = (array[i] - array[j])
                array_two.push(substraction)
                j += 1
            else
                j += 1
            end
        end
        i += 1
    end
    return array_two.min
end

def not_digit(my_string_array)                  
    (0...my_string_array.length).each do |i|  
        if (!my_string_array[i].match(/[[:digit:]]/)) then puts "error" ; exit else i += 1 end
    end
end

# Partie 1: Gestion d'erreur
not_digit(ARGV)
(puts "error" ; exit) if ARGV.length <= 1


# Partie 2: Parsing
my_string_array = ARGV

# Partie 3: Résolution
solution = convert_integer_array(my_string_array)

# Partie 4: Affichage
puts solution
