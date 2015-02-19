class Game
	def initialize 
		@rolls = [0]*21
		@currentRoll = 0
	end
	
	def roll(pins)
		@rolls[@currentRoll += 1] = pins
	end
	
	def score()
		score = 0
		for i in (0...@rolls.length)
			score += @rolls[i]
		end
		return score 
	end
	
end