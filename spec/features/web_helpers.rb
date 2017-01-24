require 'database_cleaner'

def reset_database

 RSpec.configure do |config|
   # Everything in this block runs once before all the tests run
   config.before(:suite) do
     DatabaseCleaner.strategy = :transaction
     DatabaseCleaner.clean_with(:truncation)
   end

   # Everything in this block runs once before each individual test
   config.before(:each) do
     DatabaseCleaner.start
   end
   config.after(:each) do
     DatabaseCleaner.clean
   end
 end
end
