class Game

    def initialize(choice1, choice2)
      @choice1 = choice1
      @choice2 = choice2
    end

    def play()
      winners_hash = {
        "rock" => "scissors",
        "scissors" => "paper",
        "paper" => "rock"
      }
      
      if !winners_hash.keys.include?(@choice1) || !winners_hash.keys.include?(@choice2)
        return "no-one wins, invalid entry :( "
      end

      if @choice1 == @choice2
        return "no-one wins, it's a draw!"
      end

      if winners_hash[@choice1] == @choice2
        return "Player 1 wins with #{@choice1}!"
      else
        return "Player 2 wins with #{@choice2}!"
      end

    end

end