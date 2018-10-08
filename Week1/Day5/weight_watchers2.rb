# 1. Calculateur de calories

CALORIES = Hash.new
CALORIES["Lipides"] = 9
CALORIES["Glucides"] = 4
CALORIES["Protéines"] = 4

WELSH = Hash.new
WELSH["Lipides"] = 38.4
WELSH["Glucides"] = 18.3
WELSH["Protéines"] = 36.3

def weight_watchers(dish)
	sum_weight = 0
	dish.keys.each do |key| 
		puts key
		if (CALORIES[key] != nil) # this if is to verify the existence of CALORIES[key], because the "PRIX" doesn't have the same keys as others (WELSH, FRITES, ...)
			sum_weight += dish[key] * CALORIES[key]
		end
	end
	return sum_weight
end

FRITES = Hash.new
FRITES["Lipides"] = 15
FRITES["Glucides"] = 41
FRITES["Protéines"] =3.4

BIERE = Hash.new
BIERE["Lipides"] = 0
BIERE["Glucides"] = 25
BIERE["Protéines"] = 4

MENU = Hash.new
MENU["WELSH"] = WELSH
MENU["FRITES"] = FRITES
MENU["BIERE"] = BIERE


