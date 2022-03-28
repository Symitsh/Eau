# ***** Paramètres à l’envers *****
# Créez un programme qui affiche ses arguments reçus à l’envers.
# Afficher error et quitter le programme en cas de problèmes d’arguments.
# ( Sans utiliser: puts ARGV.reverse )

# Fonction utilisée :
def a_l_envers(phrases, n)
    phrases.each do |i|
        n -= 1
        (phrases[n])
    end
end

# Partie 1: Gestion d'erreur
(puts "error." ; exit) if ARGV.size == 0

# Partie 2: Parsing
phrases = ARGV
n = 0

# Partie 3: Résolution 
solution = a_l_envers(phrases, n)

# Partie 4: Affichage
puts solution
