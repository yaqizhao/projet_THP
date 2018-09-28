puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
print "> "
number = Integer(gets.chomp)
if (number < 1 || number > 25)
    puts "Merci de donner un nombre entre 1 et 25"
else
    puts "Voici la pyramide :"
    for level in 1..number
        for brick in 1..number
            if brick <= number - level
                print " "
            else
                print "#"
            end
        end
        puts #change level
    end
end
