# As a time-pressed user
# So that I can organise my own bookmarks
# I would like to sign in to the system

feature 'Adding tags' do
  scenario 'I can add a single tag to a new link' do
    visit('/signup')
    fill_in('email',      with: 'newuser@a.com')
    fill_in('password',   with: '12345')

    click_button 'Submit'

    expect(page).to have_content("Welcome, newuser@a.com")
    expect(User.first.email).to eq('newuser@a.com')
  end
end
