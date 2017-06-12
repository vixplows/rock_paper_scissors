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
    assert_equal("Player 1 wins with paper!", @game1.play)
    assert_equal("Player 2 wins with rock!", @game2.play)
    assert_equal("no-one wins, it's a draw!", @game3.play)
    assert_equal("no-one wins, invalid entry :( ", @game4.play)
  end
end