require 'sinatra'
require './lib/player'


get '/' do

end

get '/game' do
  @@player1 = Player.new
  @@player2 = Player.new
  erb :game
end

get '/hit' do
  @@player2.hit 5

  if @@player2.life > 0
    erb :game
  else
    erb :finish
  end
end

# Pantalla de finish
get '/finish' do
   erb :finish
end

get '/fatality' do
  erb :fatality

end
