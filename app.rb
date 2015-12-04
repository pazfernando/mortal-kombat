require 'sinatra'
require './lib/player'

@@golpes_fatality=-1

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
   @@golpes_fatality+=1
   if @@golpes_fatality == 3
     @@golpes_fatality=0
     erb :fatality
  else
    erb :finish
  end
end

get '/fatality' do
  erb :fatality

end
