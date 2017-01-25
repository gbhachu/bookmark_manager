# As a time-pressed user
# So that I can organise my own bookmarks
# I would like to sign in to the system

feature 'Validates Username:' do
  scenario 'User cant sign in without valid email' do
    sign_up
    expect { sign_up(email: "test.com") }.not_to change(User, :count)
    expect(page).to have_content("Email has an invalid format")
  end
end
