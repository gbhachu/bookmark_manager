class BookmarkManager < Sinatra::Base

get '/links' do
  @links = Link.all
  erb :'links/index'
end

get '/new' do
  erb :'links/new'
end

post '/newbookmark' do
  link = Link.new(url: params[:url],title: params[:title])
  params[:tags].split.each do |tag|
    link.tags << Tag.first_or_create(name: tag.downcase)
  end
  link.save
  redirect '/links'
end

end
