require_relative "BowlingGame.rb"
require "test/unit"

class BowlingGameTest < Test::Unit::TestCase
	
	def setup()
		@g = Game.new
	end
	
	def testGutterGame()
		rollMany(20,0)
		assert_equal(0, @g.score())
	end
	
	def rollMany(n,pins)
		for i in 1..n
			@g.roll(pins)
		end
	end
	
	def testAllOnes()
		rollMany(20,1)
		assert_equal(20,@g.score())
	end
end