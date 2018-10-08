def enter_password
	puts "Enter your password"
	print ">"
	password_1 = gets.chomp
	return password_1
end

def password_is_good(password)
	puts "Verify your password"
	print ">"
	password_2 = gets.chomp
	if password == password_2
		puts "You are connected."
		return true
	else
		puts "Try again"
		return false
	end
end

def connect
	while (not password_is_good(enter_password))
	end
end

connect
