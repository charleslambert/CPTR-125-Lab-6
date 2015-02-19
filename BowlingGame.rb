class Game
	def initialize 
		@rolls = [0]*21
		@currentRoll = 0
	end
	
	def roll(pins)
		@rolls[@currentRoll] = pins
		@currentRoll +=1
		print @rolls
		puts ""
	end
	
	def score()
		score = 0
		frameIndex = 0
		for frame in (0...10)
			if isSpare(frameIndex) #spare
				score += 10 + @rolls[frameIndex + 2]
				frameIndex += 2
			else
				score += @rolls[frameIndex] + @rolls[frameIndex + 1]
				frameIndex +=2
			end
		end
		return score 
	end
	
	def isSpare(frameIndex)
		return @rolls [frameIndex]+@rolls[frameIndex] ==10
	end
	
end