# write your code here
def who_is_bigger(a, b, c)
	if (a == nil or b == nil or c == nil)
		return "nil detected"
	elsif (a > b and a > c)
		return "a is bigger"
	elsif (b > a and b > c)
		return "b is bigger"			
	elsif (c > b and c > a)
		return "c is bigger"
	end
end

def reverse_upcase_noLTA(str)
	#just need to find these predefined methods and understand using them: reverse, upcase, tr
	reversed = str.reverse!
	upcased = reversed.upcase
	noLTA = upcased.tr('L', '').tr('T', '').tr('A', '')
	return noLTA
end

def array_42(array)
	return array.include?(42)
end

def magic_array(array)
	#just need to find these predefined methods and understand using them: flatten, sort, map, reject, uniq
	#return is implicit
	array.flatten.sort.map{|a|a*2}.reject{|a|a%3==0}.uniq
end