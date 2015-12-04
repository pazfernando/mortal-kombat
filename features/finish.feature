Feature:
  como jugador
  quiero que el juego de pelea tenga un fin
  para saber si gane o perdi

Scenario:
  Given que inicie una partida
  And que un jugador tiene cero de vida
  Then el juego termino "FINISH HIM!"
  And debo ver el mensaje "Me Wins!"
