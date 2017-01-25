# As a time-pressed user
# So that I can organise my own bookmarks
# I would like to sign in to the system

feature 'User sign up:' do
  scenario 'I can sign in as new user' do
    expect { sign_up }.to change(User, :count).by(1)
    expect(page).to have_content("Welcome, newuser@abcd.com")
    expect(User.first.email).to eq('newuser@abcd.com')
  end
end
