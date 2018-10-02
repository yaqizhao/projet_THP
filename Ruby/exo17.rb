require 'Date'
puts "Donnes-moi ton âge"
print ">"
age = Integer(gets.chomp)
current_year = Date.today.year 
birth_year = current_year - age
birth_year.upto(current_year) do |year_counter|
	x = current_year - year_counter
	y = year_counter - birth_year
	if x == y  
	puts "Il y a #{x} ans, tu avais la moitié de l'age que tu as aujourd'hui."
	else
	puts "Il y a " + String(x) + " ans, "
	puts "tu avais #{y} ans."
	end
end