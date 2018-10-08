def askIfRollADice
	puts "Please roll a dice"
	gets.chomp
end

def rollADice
	askIfRollADice
	diceResult = 1 + rand(6)
	puts "You rolled #{diceResult}."
	return diceResult
end

def move(diceResult, whereIwas)
	if diceResult == 1
		if whereIwas != 0
			return whereIwas - 1
		else
			return whereIwas
		end
	elsif diceResult == 5 or diceResult == 6 
		return whereIwas + 1
	else # diceResult in {2 3 4}
		return whereIwas
	end
end

def turn(whereIwas)
	whereIam = move(rollADice, whereIwas)
	puts "You are now at level #{whereIam}."
	return whereIam
end

def gameOver(whereIam)
	if whereIam == 10
		return true
	else
		return false
	end
end


def game
	whereIam = 0
	while not gameOver(whereIam)
		whereIam = turn(whereIam)
	end
end

game