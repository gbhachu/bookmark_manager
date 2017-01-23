require 'sinatra/base'
require './lib/model/link'
require "data_mapper"
require "dm-postgres-adapter"


class BookmarkManager < Sinatra::Base
  get '/links' do
    @links = Link.all
    erb :links
  end

  get '/links/new' do
    erb :new_link
  end

  post '/links/new' do
    #'stuff'
    redirect '/links'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
