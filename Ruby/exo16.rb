require 'Date'
puts "Donnes-moi ton âge"
print ">"
age = Integer(gets.chomp)
current_year = Date.today.year 
birth_year = current_year - age
birth_year.upto(current_year) do |year_counter|
	puts "Il y a " + String(current_year - year_counter) + " ans, "
	puts "tu avais #{year_counter - birth_year} ans."
end