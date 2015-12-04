Given(/^que inicie una partida$/) do
  visit '/game'
end

Then(/^debo ver el mensaje "(.*?)"$/) do |mensaje|
  last_response.body.should =~ /#{mensaje}/m
end

Given(/^que un jugador tiene cero de vida$/) do

  click_button("PA")
  click_button("PA")
  click_button("PA")
  click_button("PA")
  click_button("PA")
  click_button("PA")
  click_button("PA")
  click_button("PA")
  click_button("PA")
  click_button("PA")
  click_button("PA")
  click_button("PA")
  click_button("PA")
  click_button("PA")
  click_button("PA")
  click_button("PA")
  click_button("PA")
  click_button("PA")
  click_button("PA")
  click_button("PA")
  last_response.body.should =~ /Dummy 0%/m
end

Then(/^el juego termino "(.*?)"$/) do |arg1|
  last_response.body.should =~ /#{arg1}/m
end

When(/^presione "(.*?)"$/) do |comando|
  click_button(comando)

end
