# As a time-pressed user
# So that I can organise my own bookmarks
# I would like to sign in to the system

feature 'Password Confirmation:' do
  scenario 'Make sure that the password and password_confirmation match' do
    expect{sign_up(password_confirmation: 'wrong')}.not_to change(User, :count)
    expect(page).to have_content('Password does not match')
    expect(current_path).to eq('/addnewuser')
  end
end
