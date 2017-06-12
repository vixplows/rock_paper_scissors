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
    assert_equal("paper!", @game1.play)
    assert_equal("rock!", @game2.play)
    assert_equal("no-one, it's a draw!", @game3.play)
    assert_equal("no-one, invalid game", @game4.play)
  end
end