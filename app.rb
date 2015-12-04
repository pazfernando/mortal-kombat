require 'sinatra'
require './lib/player'

@@golpes_fatality=-1
@@ganador = ""

get '/' do

end

get '/game' do
  @@player1 = Player.new
  @@player2 = Player.new
  erb :game
end

post '/hit' do
  @@player2.hit 5

  if @@player2.life > 0
    erb :game
  else
    erb :finish
  end
end

post '/hit2' do
  @@player1.hit 5

  if @@player1.life > 0
    erb :game
  else
    erb :finish
  end
end

get '/select' do
  erb :select
end

# Pantalla de finish
get '/finish' do
  if @@player2.life==0
    @@ganador = "Me"
  else
    @@ganador = "Player 2"
  end

  @@golpes_fatality+=1
   if @@golpes_fatality == 3
     @@golpes_fatality=-1
     erb :fatality
  else

    erb :finish
  end
end

get '/fatality' do
  erb :fatality

end
