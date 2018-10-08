#write your code here
def is_vowel(letter)
	return "aeiouyAEIOUY".include? letter
end

def is_consonant(last_letter, letter)
	if last_letter == "q" && letter == "u"
		return true
	else
		return (not is_vowel(letter))
	end
end

def is_begin_with_a_vowel(word)
	return is_vowel(word[0])
end

def get_number_consonants_at_beginning(word)
	is_still_consonant = true
	number_character = 0
	while is_still_consonant 
		is_still_consonant &= is_consonant(word[number_character - 1], word[number_character])
		if is_still_consonant
			number_character += 1
		end
	end
	return number_character
end

def change_order(word, number_consonants)
	word[number_consonants..-1] + word[0..number_consonants-1]
end

def translate(str)
	result = ""
	space = ""
	str.split.each do |word|
		if is_begin_with_a_vowel(word)
			result += space + word + "ay"
		else
			number_consonants = get_number_consonants_at_beginning(word)
			result += space + change_order(word, number_consonants) + "ay"
		end
		space = " "
	end
	return result
end

puts translate("banana")
puts translate("cherry")
puts translate("three")
puts translate("school")