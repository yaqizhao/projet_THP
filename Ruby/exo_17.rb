puts "Bonjour, c'est quoi votre année de naissance ?"
birth_year = Integer(gets.chomp)
last_year = 2017
this_year = last_year + 1
age = 0
for year in birth_year..last_year
    x = this_year - year
    if x == age
        puts "Il y a n ans, tu avais la moitié de l'age que tu as aujourd'hui"
    else
        puts "Il y a #{x} ans, tu avais #{age} ans"
    end
    age += 1
end
