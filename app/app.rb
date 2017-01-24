require 'sinatra/base'
require_relative 'models/link'

class BookmarkManager < Sinatra::Base
  get '/' do
    'Homepage'
  end

  get '/links' do
    erb :links
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
