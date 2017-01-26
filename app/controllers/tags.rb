class BookmarkManager < Sinatra::Base

  get '/tags/:search' do
    tag = Tag.first(name: params[:search].downcase)
    @links = tag ? tag.links : []
    erb :'links/index'
  end
end
