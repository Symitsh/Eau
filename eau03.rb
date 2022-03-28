# ***** Suite de Fibonacci *****
# Créez un programme qui affiche le N-ème élément de la célèbre suite de Fibonacci. 
# (0, 1, 1, 2) étant le début de la suite et le premier élément étant à l’index 0.
# Afficher -1 si le paramètre est négatif ou mauvais.

# Fonction utilisée :
def fibonacci_suite(n)
  (return n) if n == 0 || n == 1
  fibonacci_suite(n-1) + fibonacci_suite(n-2)
end
  
# Partie 1: Gestion d'erreur
(puts "-1" ; exit) if ARGV.length != 1
(puts "-1" ; exit) if ARGV[0].match?(/\D/)

# Partie 2: Parsing
n = ARGV[0].to_i

# Partie 3: Résolution 
solution = fibonacci_suite(n)

# Partie 4: Affichage
puts solution
