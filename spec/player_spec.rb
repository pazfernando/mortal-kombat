require './lib/player'

describe Puntaje do

  it "la partida inicia en 0-0" do
    puntaje = Puntaje.new
    puntaje.score.should == "0-0"
  end

end
