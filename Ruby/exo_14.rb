puts "Donnez-moi un nombre."
number = Integer(gets.chomp)
for i in 0..number
    puts number - i
end
