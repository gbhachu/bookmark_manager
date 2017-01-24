require 'sinatra/base'

class BookmarkManager < Sinatra::Base
  get '/' do
    'http://google.com'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
