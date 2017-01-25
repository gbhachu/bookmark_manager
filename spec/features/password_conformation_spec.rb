




feature 'Password Confirmation' do
  scenario 'requests user to confirm password' do
    expect{sign_up(password_confirmation: 'wrong')}.not_to change(User, :count)
    expect(page).to have_content('Password and confirmation password do not match')
    expect(current_path).to eq('/addnewuser')
  end
end
