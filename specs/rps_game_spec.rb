require ('minitest/autorun')
require ('minitest/reporters')

require_relative '../models/rps_game'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestRockPaperScissors < Minitest::Test

  def test_guess_rock_ties_with_rock()
    guess = RockPaperScissors.rock("rock")
    assert_equal("Guess again, it's a tie!", guess)
  end

  def test_guess_rock_loses_to_paper()
    guess = RockPaperScissors.rock("paper")
    assert_equal("Paper wins!", guess)
  end

  def test_guess_rock_wins_to_scissors()
    guess = RockPaperScissors.rock("scissors")
    assert_equal("Rock wins!", guess)
  end

  def test_guess_scissors_ties_with_scissors()
    guess = RockPaperScissors.scissors("scissors")
    assert_equal("Guess again, it's a tie!", guess)
  end

  def test_guess_scissors_loses_to_rock()
     guess = RockPaperScissors.scissors("rock")
     assert_equal("Rock wins!", guess)
   end

   def test_guess_scissors_wins_to_paper()
     guess = RockPaperScissors.scissors("paper")
     assert_equal("Scissors wins!", guess)
   end

   def test_guess_paper_draws_with_paper()
     guess = RockPaperScissors.paper("paper")
     assert_equal("Guess again, it's a tie!", guess)
   end

   def test_guess_paper_loses_to_scissors()
    guess = RockPaperScissors.paper("scissors")
    assert_equal("Scissors wins!", guess)
  end

  def test_guess_paper_wins_to_rock()
    guess = RockPaperScissors.paper("rock")
    assert_equal("Paper wins!", guess)
  end

end
