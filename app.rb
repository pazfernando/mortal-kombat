require 'sinatra'
require './lib/player'

get '/' do

end

get '/game' do
  @@player1 = Player.new
  @@player2 = Player.new
  erb :game
end
