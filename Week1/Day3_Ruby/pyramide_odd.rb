puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
print "> "

def pyramide_odd (etage = Integer(gets.chomp))
    puts "Voici la pyramide :"
    space = etage - 1 
    dieze = 1
    while dieze < 2*etage +1 
        puts (" " * space)+("#"*dieze)
        space -= 1
        dieze += 2
    end
end 

pyramide_odd