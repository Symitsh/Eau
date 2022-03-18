# ***** Par ordre Ascii *****
# Créez un programme qui trie les éléments donnés en argument par ordre ASCII.
# Afficher error et quitter le programme en cas de problèmes d’arguments.

# Fonctions utilisées :
def my_select_sort_ascii(my_string_array)
  new_array = my_string_array
  n = new_array.size
  for i in (0..n-2)
    min = i
    for j in (i+1..n-1)
      if new_array[j] < new_array[min]
        min = j
      end
    end
    permute(new_array,i, min)
  end
  return new_array
end
  
def permute(array, index, min_index)
  array[index], array[min_index] = array[min_index], array[index] if min_index != index
  return array
end
  
# Partie 1: Gestion d'erreur
(puts "error" ; exit) if ARGV.length <= 1

# Partie 2: Parsing
my_string_array = ARGV

# Partie 3: Résolution
solution = my_select_sort_ascii(my_string_array)

# Partie 4: Affichage
puts solution.join(' ') ; puts
