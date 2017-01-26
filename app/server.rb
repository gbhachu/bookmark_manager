class BookmarkManager < Sinatra::Base
  enable :sessions
  register Sinatra::Flash
  register Sinatra::Partial
  use Rack::MethodOverride
  set :session_secret, 'super secret'
  set :partial_template_engine, :erb
  enable :partial_underscores

  get '/' do
    redirect '/links'
  end

  helpers do
    def current_user
      @current_user ||= User.get(session[:user_id])
    end
    def tags(link)
      @tags = link.tags.map(&:name).join(', ')
    end
  end

end
