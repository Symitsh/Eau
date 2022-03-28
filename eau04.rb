# ***** Prochain nombre premier *****
# Créez un programme qui affiche le premier nombre premier supérieur au nombre donné en argument.
# Afficher -1 si le paramètre est négatif ou mauvais.

# Fonctions utilisées :
def is_prime(num)
    (2...num).each do |i|
      (return false) if num%i == 0 end
    return true
end

def next_prime(n)
    (return 2) if (n <= 1)
    prime = n
    found = false

    while !found
       prime = prime + 1
        (found = true) if(is_prime(prime) == true)
    end
    return prime
end

# Partie 1: Gestion d'erreur
(puts "-1" ; exit) if ARGV.length != 1
(puts "-1" ; exit) if ARGV[0].match?(/\D/)

# Partie 2: Parsing
x = ARGV[0].to_i

# Partie 3: Résolution
solution = next_prime(x)

# Partie 4: Affichage
puts solution
