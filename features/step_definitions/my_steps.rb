Given(/^que inicie una partida$/) do
  visit '/game'
end

Then(/^debo ver el mensaje "(.*?)"$/) do |mensaje|
  last_response.body.should =~ /#{mensaje}/m
end

Given(/^que el dummy tiene cero de vida$/) do
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

When(/^se realizo la combinacion de golpes para fatality$/) do
  click_button("PAF")
  click_button("PAF")
  click_button("PAF")
end

Given(/^que debo seleccionar el personaje$/) do
  visit '/select'
end

Then(/^veo una lista con los personajes a seleccionar$/) do

end

Then(/^puedo seleccionar "(.*?)"$/) do |character|
  select "Sub Zero", :from => "characters"
end

Given(/^que inicie una partida como jugador (\d+)$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end


Given(/^que el jugador uno tiene cero de vida$/) do
  click_button("PA2")
  click_button("PA2")
  click_button("PA2")
  click_button("PA2")
  click_button("PA2")
  click_button("PA2")
  click_button("PA2")
  click_button("PA2")
  click_button("PA2")
  click_button("PA2")
  click_button("PA2")
  click_button("PA2")
  click_button("PA2")
  click_button("PA2")
  click_button("PA2")
  click_button("PA2")
  click_button("PA2")
  click_button("PA2")
  click_button("PA2")
  click_button("PA2")
end
