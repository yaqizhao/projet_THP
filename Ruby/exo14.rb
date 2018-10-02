puts "Donnes-moi un chiffre"
print ">"
i = Integer(gets.chomp)
i.downto(0) do |n|
	puts n
end