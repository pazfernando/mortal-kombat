Feature:
  como jugador
  quiero que mi personaje lance patadas altas
  para disminuir la vida del personaje

Scenario:
  Given que inicie una partida
  When presione "PA"
  Then debo ver el mensaje "95%"

Scenario:
  Given que inicie una partida
  When presione "PA2"
  Then debo ver el mensaje "95%"
