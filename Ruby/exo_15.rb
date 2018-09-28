puts "Bonjour, c'est quoi votre année de naissance ?"
birth_year = Integer(gets.chomp)
last_year = 2017
age = 0
for year in birth_year..last_year
    puts "En #{year}, tu avais #{age} ans"
    age += 1
end
