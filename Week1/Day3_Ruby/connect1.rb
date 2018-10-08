def getPassword(question)
	puts question
	print ">"
	password = gets.chomp
	return password
end

success = false
while (not success)
	firstPassword = getPassword("Enter your password")
	secondPassword = getPassword("Verify your password")
	if firstPassword == secondPassword
		puts "Yo"
		success = true
	else
		puts "Boo"
	end
end