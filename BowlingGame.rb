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
			if isStrike(frameIndex) #strike
				score +=  10 + strikeBonus(frameIndex)
				frameIndex += 1
			elsif isSpare(frameIndex) #spare
				score += 10 + spareBonus(frameIndex)
				frameIndex += 2
			else
				score += sumOfBallsInFrame(frameIndex)
				frameIndex +=2
			end
		end
		return score 
	end
	
	def isStrike(frameIndex)
		return @rolls[frameIndex] ==10
	end
	
	def sumOfBallsInFrame(frameIndex)
		return @rolls[frameIndex]+@rolls[frameIndex+1]
	end
	
	def spareBonus(frameIndex)
		return @rolls[frameIndex + 2]
	end
	
	def strikeBonus(frameIndex)
		return @rolls[frameIndex + 1] + @rolls[frameIndex+2] 
	end
	
	def isSpare(frameIndex)
		return @rolls [frameIndex]+@rolls[frameIndex] ==10
	end
	
end