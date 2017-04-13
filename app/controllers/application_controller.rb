require 'sinatra/base'
require 'rack-flash'
class ApplicationController < Sinatra::Base

  set :views, Proc.new { File.join(root, "../views/") }
  set :public_dir, "public"
  enable :sessions
  set :session_secret, "cloche_hat_is_best_hat"
  use Rack::Flash

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
      flash[:message] = "Invalid username and password combination."
      redirect '/login'
    end
  end

  get '/logout' do
    session.clear
    redirect '/'
  end

  helpers do
    def is_logged_in?
      !!current_user
    end

    def current_user
      @user ||= User.find_by(id: session[:user_id])
    end

    def redirect_if_not_logged_in
      if is_logged_in?
        yield if block_given?
      else
        flash[:message] = "You must be logged in to access the application."
        redirect '/'
      end
    end
  end

end
