# As a time-pressed user
# So that I can organise my own bookmarks
# I would like to sign in to the system

feature 'Sign out:' do
  scenario 'User can sign into the system' do
    sign_up
    sign_in
    click_button 'Sign out'
    expect(page).to have_content('goodbye!')
    expect(page).not_to have_content('Welcome, test@test.com')
  end
end
