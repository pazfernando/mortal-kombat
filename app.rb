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
  erb :game
end
