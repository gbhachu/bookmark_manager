# As a time-pressed user
# So that I can organise my own bookmarks
# I would like to sign in to the system

feature 'Validates Username:' do
  scenario 'User cant sign in with a blank email address' do
    expect { sign_up(email: nil) }.not_to change(User, :count)
    expect(page).to have_content("Email must not be blank")
  end
end
