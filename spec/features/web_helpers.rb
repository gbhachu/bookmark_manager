require 'database_cleaner'

def reset_database

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
end

def sign_up(email: 'newuser@abcd.com', password: '12345678', password_confirmation: '12345678')
  visit '/signup'
  fill_in :email, with: email
  fill_in :password, with: password
  fill_in :password_confirmation, with: password_confirmation
  click_button 'Submit'
end
