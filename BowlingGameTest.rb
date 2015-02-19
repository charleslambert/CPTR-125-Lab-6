require_relative "BowlingGame.rb"
require "test/unit"

class BowlingGameTest < Test::Unit::TestCase
	
	def setup()
		@g = Game.new
	end
	
	def testGutterGame()
		n = 20
		pins = 0
		rollMany(n,pins)
		assert_equal(0, @g.score())
	end
	
	def rollMany(n,pins)
		for i in 1..n
			@g.roll(pins)
		end
	end
	
	def testAllOnes()
		for i in 1..20
			@g.roll(1)
		end
		assert_equal(20,@g.score())
	end
end