




feature 'Password Confirmation' do
  scenario 'requests user to confirm password' do
    expect{sign_up(password_confirmation: 'wrong')}.not_to change(User, :count)

  end
end
