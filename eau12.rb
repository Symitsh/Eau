# ***** Tri à bulle *****
# Créez un programme qui trie une liste de nombres. Votre programme devra implémenter l’algorithme du tri à bulle.
# Afficher error et quitter le programme en cas de problèmes d’arguments.

# Fonctions utilisées :
def my_bubble_sort(integer_array) 
    new_array = integer_array
    swapped = true
    while swapped 
      swapped = false
      0.upto(new_array.size-2) do |i|
        if new_array[i] > new_array[i+1]
          permute(new_array, i)
          swapped = true
        end
      end 
    end
    return new_array
end
  
def permute(array, index)
array[index], array[index+1] = array[index+1], array[index] # swap values
return array
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
string_array = ARGV

# Partie 3: Résolution
solution = my_bubble_sort(string_array)

# Partie 4: Affichage
puts solution.join(' ') ; puts
