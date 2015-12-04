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
