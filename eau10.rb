# ***** Index wanted *****
# Créez un programme qui affiche le premier index d’un élément recherché dans un tableau.
# Le tableau est constitué de tous les arguments sauf le dernier.
# L’élément recherché est le dernier argument. Afficher -1 si l’élément n’est pas trouvé.
# Afficher error et quitter le programme en cas de problèmes d’arguments.

# Fonctions utilisées :
def browse_array(array, last_index)
    i = 0 
    j = 0
    while (i < array.length)
        if (array[i] == last_index.to_s.tr('["\]', ''''))
           (puts j ; exit)
        else
            i += 1
            j += 1
        end
        not_found(i, array)
    end
end

def not_found(i, array)
    if (i >= array.length)
        (puts "-1" ; exit)
    end
end

def not_alpha(my_string_array)                  
    (0...my_string_array.length).each do |i|  
        if (!my_string_array[i].match(/[[:alpha:]]/)) then puts "error" ; exit else i += 1 end
    end
end

# Partie 1: Gestion d'erreur
not_alpha(ARGV)
(puts "error" ; exit) if ARGV.length <= 1

# Partie 2: Parsing
my_array = ARGV
last_index = []
last_index << ARGV[-1] ; ARGV.delete_at(-1)      # Je met le dernier mot dans une variable et je le supprime de la phrase.

# Partie 3: Résolution
solution = browse_array(my_array, last_index)

# Partie 4: Affichage
puts solution
