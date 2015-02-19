class Game
	def initialize 
		@rolls = [0]*21
		@currentRoll = 0
	end
	
	def roll(pins)
		@rolls[(@currentRoll += 1)] = pins
		puts @rolls
	end
	
	def score()
		score = 0
		i = 1
		for frame in (0...10)
			if (@rolls[i] +@rolls[i + 1] == 10) #spare
				score += (10 +@rolls[i+2])
				i += 2
			else
				score += (@rolls[i] + @rolls[i + 1])
				i += 2
			end
		end
		return score 
	end
	
end