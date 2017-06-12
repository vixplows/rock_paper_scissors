require( 'pry-byebug' )
require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( './models/game' )


get '/play/:choice1/:choice2' do
  game = Game.new(params[:choice1], params[:choice2])
  @winner = game.play()
  erb (:result)
end

# get '/play/rock/scissor' do
#  return "rock beats scissor"
# end

# get '/play/paper/rock' do
#   return "paper beats rock"
# end

# get '/play/scissor/paper' do
#   return "scissors beats paper"
# end