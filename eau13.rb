# ***** Tri par sélection *****
# Créez un programme qui trie une liste de nombres. Votre programme devra implémenter l’algorithme du tri par sélection.
# Afficher error et quitter le programme en cas de problèmes d’arguments.

# Fonctions utilisées :
def my_select_sort(integer_array)
  new_array = integer_array
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
  
def permute(tab, index, min_index)
  tab[index], tab[min_index] = tab[min_index], tab[index] if min_index != index
  return tab
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
solution = my_select_sort(my_string_array)

# Partie 4: Affichage
puts solution.join(' ') ; puts
