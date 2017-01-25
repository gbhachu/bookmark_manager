ENV['RACK_ENV'] ||= "development"

require 'sinatra/base'
require_relative 'data_mapper_setup'

class BookmarkManager < Sinatra::Base
  enable :sessions
  set :session_secret, 'super secret'

  get '/' do
    redirect '/links'
  end

  get '/links' do
    @links = Link.all
    erb :links
  end

  get '/new' do
    erb :new
  end

  post '/newbookmark' do
    link = Link.new(url: params[:url],title: params[:title])
    params[:tags].split.each do |tag|
      link.tags << Tag.first_or_create(name: tag.downcase)
    end
    # tag  = Tag.first_or_create(name: params[:tags].downcase)
    # link.tags << tag
    link.save
    # Link.create(url: params[:url], title: params[:title])
    # Tags.create(tags: params[:tags])
    redirect '/links'
  end

  get '/tags/:search' do
    tag = Tag.first(name: params[:search].downcase)
    @links = tag ? tag.links : []
    erb :links
  end

  get '/signup' do
    erb :signup
  end

  post '/addnewuser' do
    email = params[:email]
    password = params[:password]
    user = User.create(email: email.downcase, password: password)
    session[:user_id] = user.id
    redirect '/links'
  end

  helpers do
    def current_user
      @current_user ||= User.get(session[:user_id])
    end
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
