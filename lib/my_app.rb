require 'sinatra/base'
require './lib/model/link'



class BookmarkManager < Sinatra::Base
  get '/links' do
    @links = Link.all
    erb :links
  end

  get '/links/new' do
    erb :new_link
  end

  post '/links' do
    Link.create(url: params[:url], title: params[:name])
    @links = Link.all
    erb :'links/index'
  end

  get '/links/new' do
    erb :'links/new'
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
