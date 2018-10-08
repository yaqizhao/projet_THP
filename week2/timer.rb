#write your code here
def convert_to_string(n)
	if n < 10 # n is between 00 to 09
		return "0#{n}"
	else # n is between 10 to 59
		return "#{n}"
	end
end

def time_string(total_seconds)
	seconds = total_seconds % 60 
	str_seconds = convert_to_string(seconds)
	rounded_minutes = (total_seconds - seconds) / 60

	minutes = rounded_minutes % 60
	str_minutes = convert_to_string(minutes)
	rounded_hours = (rounded_minutes - minutes) / 60
	

	hours = rounded_hours % 24
	str_hours = convert_to_string(hours)

	return "#{str_hours}:#{str_minutes}:#{str_seconds}"
end