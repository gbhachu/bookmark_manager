require 'database_cleaner'

RSpec.configure do |config|
  config.before(:suite) do
    DatabaseCleaner.strategy = :transaction
    DatabaseCleaner.clean_with(:truncation)
  end

  config.before(:each) do
    DatabaseCleaner.start
  end

  config.after(:each) do
    DatabaseCleaner.clean
  end
end

def sign_up(email: 'newuser@abcd.com', password: '12345678', password_confirmation: '12345678')
  visit '/signup'
  fill_in :email, with: email
  fill_in :password, with: password
  fill_in :password_confirmation, with: password_confirmation
  click_button 'Submit'
end

def new_link(title: 'BBC', url: 'http://www.bbc.co.uk', tags: 'education')
  visit('/new')
  fill_in('title', with: title)
  fill_in('url', with: url)
  fill_in('tags', with: tags)
  click_button('Submit')
end

def sign_in(email: 'newuser@abcd.com', password: '12345678')
  visit '/sessions/new'
  fill_in :email, with: email
  fill_in :password, with: password
  click_button 'Submit'
end

def recover_password
  visit '/users/recover'
  fill_in :email, with: 'newuser@abcd.com'
  click_button 'Submit'
end

def set_password(password:, password_confirmation:)
  visit("/users/reset_password?token=#{user.password_token}")
  fill_in :password, with: password
  fill_in :password_confirmation, with: password_confirmation
  click_button 'Submit'
end
