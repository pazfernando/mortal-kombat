require './lib/player'

describe Player do

  it "la vida del jugador debe empezar en 100%" do
    dummy = Player.new
    dummy.life.should == 100
  end

  it "la vida del jugador debe disminuir un 5% con cada patada alta recibida" do
    dummy = Player.new
    dummy.hit 5
    dummy.life.should == 95
  end

  it "si jugador recibe patada alta y vida es menor que cinco y mayor que cero
  la vida resultante debe ser cero" do
    dummy = Player.new
    dummy.life = 4
    dummy.hit 5
    dummy.life.should == 0
  end


end
