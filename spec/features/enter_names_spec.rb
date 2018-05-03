
feature 'Enter names' do
  scenario 'submitting names' do
    sign_in_and_play
    "can you see me"
    expect(page).to have_content "Sally vs. Bob"
  end
end
