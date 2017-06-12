require 'minitest/autorun'
require_relative '../models/game'

class TestGame < Minitest::Test

  def setup
    @game1 = Game.new("paper", "rock")
    @game2 = Game.new("scissors", "rock")
    @game3 = Game.new("rock", "rock")
    @game4 = Game.new("nonsense", "data")
  end

  def test_play
    assert_equal("paper wins!", @game1.play)
    assert_equal("rock wins!", @game2.play)
    assert_equal("it's a draw!", @game3.play)
    assert_equal("that's nonsense! play again", @game4.play)
  end
end