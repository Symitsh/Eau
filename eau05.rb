# ***** String dans string *****
# Créez un programme qui détermine si une chaîne de caractère se trouve dans une autre.

# Fonction utilisée : ( Ne pas utiliser la méthode .include? )
def string_contains(str0, str1)
  
  i = 0
  j = 0
  while i < str1.length-1
    (return false) if str1.length > str0.length
    if str0[j] == str1[i]
      i += 1
      j += 1
      if str1[i] != str0[j]        
        (return false) if i == str1.length
      end
    end
    (i = 0 ; j += 1) if str1[i] != str0[j]
    (return false)   if j > str0.length
  end
  return true
end

# Partie 1: Gestion d'erreur
(puts "error" ; exit) if ARGV.size != 2
(puts "error" ; exit) if ARGV[1].size <= 1

# Partie 2: Parsing
str0 = ARGV[0].split('')
str1 = ARGV[1].split('')

# Partie 3: Résolution
solution = string_contains(str0, str1)

# Partie 4: Affichage
puts solution
