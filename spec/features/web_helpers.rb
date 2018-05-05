# require './lib/player'

def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Sally'
  fill_in :player_2_name, with: 'Bob'
  click_button 'Submit'
end
