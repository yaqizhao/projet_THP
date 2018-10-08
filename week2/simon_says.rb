#write your code here
def echo(str)
	return str
end

def shout(str)
	return str.upcase
end

def repeat(str, number = 2)
	result = str
	number.times do |time|
		if time != 0
			result += " #{str}"
		end
	end
	return result
end

def start_of_word(str, number)
	return str[0..number-1]
end

def first_word(str)
	return str.split[0]
end

def is_little_word(word)
	return word == "of" || word == "the" || word == "and" || word == "or" 
end

def titleize(str)
	result = ""
	is_first_word = true
	str.split.each do |word|
		if is_little_word(word) && (not is_first_word)
			result += " " + word
		elsif is_first_word
			puts "here"
			result += word[0].upcase + word[1..-1]
		else # not little word and not first word
			result += " " + word[0].upcase + word[1..-1]
		end
		is_first_word = false
	end
	
	return result
end

puts titleize("david copperfield")