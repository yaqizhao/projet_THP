def ask_first_name
	puts "What is your first name?"
	print ">"
	
end

def say_hello(first_name = gets.chomp.to_s)
	puts "Hello, #{first_name} !"
end
ask_first_name
say_hello