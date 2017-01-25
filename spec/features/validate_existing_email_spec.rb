feature 'Validates Username' do
  scenario 'user cant sign in without valid email' do
    sign_up
    expect { sign_up(email: "test.com") }.not_to change(User, :count)
    expect(page).to have_content("Email has an invalid format")
  end
end
