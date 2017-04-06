class ApplicationController < Sinatra::Base

  set :views, Proc.new { File.join(root, "../views/") }
  set :public_dir, "public"
  enable :sessions
  set :session_secret, "cloche_hat_is_best_hat"

  get '/' do
    erb :index
  end

  get '/login' do
    erb :login
  end

  post '/login' do
    user = User.find_by(username: params[:username])
    if !!user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect '/clothes'
    else
      redirect '/login'
    end
  end

  helpers do
    def is_logged_in?
      !!session[:user_id]
    end

    def current_user
      User.find(session[:user_id])
    end
  end

end
