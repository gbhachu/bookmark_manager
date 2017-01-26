require './app/models/user'

describe User do
  let(:user) { User.create(id: "1", email: "dave@dave.com", password: "12345") }
it "saves a password recovery token when we generate a token" do
  user.save

   expect{user.generate_token}.to change{user.password_token}
   p user
 end
end
