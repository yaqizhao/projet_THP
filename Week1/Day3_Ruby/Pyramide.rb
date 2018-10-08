puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu?"
print ">"
def pyramide(etage = Integer(gets.chomp))
	puts "Voici la pyramide: "
	etage.times do |rang|
		numberOfDieses = rang + 1
		numberOfSpaces = etage - rang 
		numberOfSpaces.times do |space|
			print " "
	end
		numberOfDieses.times do |diese|
		print "#"
	end
	puts
end  
end
pyramide
