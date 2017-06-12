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
        return "that's nonsense! play again"
      end

      if @choice1 == @choice2
        return "it's a draw!"
      end

      if winners_hash[@choice1] == @choice2
        return "#{@choice1} wins!"
      else
        return "#{@choice2} wins!"
      end

    end

end