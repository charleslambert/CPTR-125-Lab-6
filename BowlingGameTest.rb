require_relative "BowlingGame.rb"
require "test/unit"

class BowlingGameTest < Test::Unit::TestCase
	def testGutterGame()
		g = Game.new
		for i in 0..20
			g.roll(0)
		end
		assert_equal(0, g.score())
	end
end