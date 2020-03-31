class RockPaperScissors

  def self.rock(guess)
    if guess == "rock"
      return "Guess again, it's a tie!"
    elsif guess == "paper"
      return "Paper wins!"
    end
    return "Rock wins!"
  end

  def self.scissors(guess)
    if guess == "scissors"
      return "Guess again, it's a tie!"
    elsif guess == "rock"
      return "Rock wins!"
    end
    return "Scissors wins!"
  end

  def self.paper(guess)
    if guess == "paper"
      return "Guess again, it's a tie!"
    elsif guess == "scissors"
      return "Scissors wins!"
    end
    return "Paper wins!"
  end 

end
