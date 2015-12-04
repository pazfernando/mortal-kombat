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
  end

Then(/^el juego termino "(.*?)"$/) do |arg1|
  visit '/finish'
  last_response.body.should =~ /#{arg1}/m
end

When(/^presione "(.*?)"$/) do |comando|
  click_button(comando)
end


Given(/^la pelea termino$/) do
  visit '/finish'
end

Given(/^se realizo la combinacion de golpes para fatality$/) do
  click_button("PA")
  click_button("PA")
  click_button("PA")
end
