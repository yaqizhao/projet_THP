puts "Donnes-moi ton année de naissance"
print ">"
birth_year = Integer(gets.chomp)
birth_year.upto(2017) do |year_btw|
	puts year_btw
	puts year_btw - birth_year
end