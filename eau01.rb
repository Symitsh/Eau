# ***** Combinaisons de 2 nombres *****
# Créez un programme qui affiche toutes les différentes combinaisons de deux nombre entre 00 et 99 dans l’ordre croissant.

# Fonctions utilisées :
def result(tab)
    while increment_is_true(tab)
        print "#{tab[0]}#{tab[1]} #{tab[2]}#{tab[3]}, " 
        if (tab[0] == 9 && tab[1] == 8)
            print "#{tab[0]}#{tab[1]} #{tab[2]}#{tab[3]}" ; puts
        end
     end
end

def increment_is_true(tab)
    if (tab[3] <= 9)
        tab[3] += 1
        if (tab[3] == 10)
        tab[2] += 1
        tab[3] = 0
            if (tab[2] == 10)
            tab[1] += 1
            tab[2] = tab[0]
            tab[3] = tab[1] + 1
                if (tab[2] == 0 && tab[3] == 10)
                    tab[2] += 1
                    tab[3] = 0
                elsif (tab[2] == 0 && tab[3] == 11) 
                    tab[3] = tab[2] + 1
                    tab[2] += 1
                    tab[1] = 0
                    tab[0] += 1
                elsif (tab[3] == 10)
                    tab[2] += 1
                    tab[3] = 0
                    if (tab[0] == 9 && tab[1] == 9 && tab[2] == 10 && tab[3] == 0)
                        return false
                    end
                elsif (tab[1] == 10)
                    tab[0] += 1
                    tab[1] = tab[1] - 10
                    tab[2] = tab[0]
                    tab[3] = tab[1] + 1
                elsif (tab[0] == tab[2] && tab[1] ==1 && tab[3] == 2)
                tab[2] = tab[0]
                end
            end
        end
        return true
    end
end

# Partie 1: Gestion d'erreur
(puts "error: wrong number of arguments"; exit) if ARGV.size != 0

# Partie 2 : Parsing
a, b, c, d  = 0, 0, 0, 0
tab = [a, b, c, d]

# Partie 3: Résolution 
solution = result(tab)

# Partie 4 : Affichage
puts solution
