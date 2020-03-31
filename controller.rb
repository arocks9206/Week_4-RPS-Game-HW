require('sinatra')
require('sinatra/contrib/all') if development?

require_relative('../models/rps_game')
also_reload("../models/*")

get '/paper/:guess' do
  guess = params['guess']
  @result = RockPaperScissors.paper(guess)
  @player1 = "Paper"
  @player2 = guess
  erb(:result, :player1, :player2)
end

get '/scissors/:guess' do
  guess = params['guess']
  @result = RockPaperScissors.scissors(guess)
  erb(:result)
end

get '/rock/:guess' do
  guess = params['guess']
  @result = RockPaperScissors.rock(guess)
  erb(:result)
end
