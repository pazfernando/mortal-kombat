Given(/^que inicie una partida$/) do
  visit '/game'
end

Then(/^debo ver el mensaje "(.*?)"$/) do |mensaje|
  last_response.body.should =~ /#{mensaje}/m
end
