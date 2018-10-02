arr = Array.new
12.times do |number|
	if number < 9
		email_number = "0" + String(number+1)
	else 
		email_number = String(number+1)
	end
	arr.push("jean.dupont.#{email_number}@email.fr")
end
