require_relative "BowlingGame.rb"
require "test/unit"

class BowlingGameTest < Test::Unit::TestCase
	
	def setup()
		@g = Game.new
	end
	
	def testGutterGame()
		n = 20
		pins = 0
		for i in 1..n
			@g.roll(pins)
		end
		assert_equal(0, @g.score())
	end
	
	def testAllOnes()
		for i in 1..20
			@g.roll(1)
		end
		assert_equal(20,@g.score())
	end
end