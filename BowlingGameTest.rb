require_relative "BowlingGame.rb"
require "test/unit"

class BowlingGameTest < Test::Unit::TestCase
	
	def setup()
		@g = Game.new
	end
	
	def rollMany(n,pins)
		for i in (0...n)
			@g.roll(pins)
		end
	end
	
	def testGutterGame()
		rollMany(20,0)
		assert_equal(0, @g.score())
	end
	
	def testAllOnes()
		rollMany(20,1)
		assert_equal(20,@g.score())
	end
	
	def testOneSpare()
		@g.roll(5)
		@g.roll(5) #spare
		@g.roll(3)
		rollMany(17,0)
		assert_equal(16,@g.score())
	end
end