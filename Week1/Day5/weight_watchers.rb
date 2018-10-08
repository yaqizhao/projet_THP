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

# 2. Level up

FRITES = Hash.new
FRITES["Lipides"] = 15
FRITES["Glucides"] = 41
FRITES["Protéines"] = 3.4

BIERE = Hash.new
BIERE["Lipides"] = 0
BIERE["Glucides"] = 25
BIERE["Protéines"] = 4

MENU = Hash.new
MENU["WELSH"] = WELSH
MENU["FRITES"] = FRITES
MENU["BIERE"] = BIERE

def meal_weight_watchers(menu)
	sum_weight = 0
	menu.keys.each do |key| # first loop : key == ["WELSH"]
		sum_weight += weight_watchers(menu[key])
	end
	return sum_weight
end

#L'addition s'il vous plaît

# to make :
   # {PRIX=
   #    {WELSH = { :prix => 15 },
   #     FRITES = { :prix => 4 },
   #     BIERE = { :prix  => 5 }
   #    }
   # }

PRIX = Hash.new
PRIX["WELSH"] = Hash.new
PRIX["FRITES"] = Hash.new
PRIX["BIERE"] = Hash.new
PRIX["WELSH"]["prix".to_sym] = 15 # "prix".to_sym == :"prix"
PRIX["FRITES"]["prix".to_sym] = 4
PRIX["BIERE"]["prix".to_sym] = 5
MENU["PRIX"] = PRIX

def meal_price(menu)
	sum_price = 0
	menu["PRIX"].each do |key, value| # first loop : key == WELSH, value = { :prix => 15 }
		sum_price += value[:"prix"] #  "prix".to_sym == :"prix" ; MENU["PRIX"]["WELSH"][:"prix"] = 15
	end
	return sum_price
end

puts meal_weight_watchers(MENU)
puts meal_price(MENU)