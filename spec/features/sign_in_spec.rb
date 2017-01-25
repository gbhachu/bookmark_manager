# As a time-pressed user
# So that I can organise my own bookmarks
# I would like to sign in to the system

feature 'Sign in:' do
  scenario 'User can sign into the system' do
    sign_up
    sign_in
    expect(page).to have_content 'Welcome, newuser@abcd.com'
  end
end
