feature 'attacking' do
  scenario "attack player 2" do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content "Sally attacked Bob"
  end

  scenario "reduce player 2 HP by 10" do
    sign_in_and_play
    click_button 'Attack'
    click_button 'OK'
    expect(page).not_to have_content 'Bob 60HP'
    expect(page).to have_content 'Bob 50HP'
  end
end