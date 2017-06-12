require( 'pry-byebug' )
require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( './models/game' )

get '/' do
  erb(:home)
end

get '/about_us' do
  erb(:about_us)
end

get '/play' do
  erb(:play)
end

get '/play/:choice1/:choice2' do
  game = Game.new(params[:choice1], params[:choice2])
  @winner = game.play()
  erb(:result)
end