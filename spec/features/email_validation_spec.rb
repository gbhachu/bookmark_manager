feature 'Validates Username' do
  scenario 'user cant sign in without valid email' do

    expect { sign_up(email: nil) }.not_to change(User, :count)
    #expect(page).to have_content("Please enter valid email")

  end
end
