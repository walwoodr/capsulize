class UsersController < ApplicationController

  get '/users' do
    erb :'users/index'
  end

  get '/signup' do
    if is_logged_in?
      redirect '/'
    end
    @user = User.new(params[:user])
    erb :'users/new'
  end

  post '/signup' do
    @user = User.new(params[:user])
    if @user.save
      session[:user_id] = user.id
      redirect '/clothes'
    else
      flash[:message] = @user.errors.full_messages.join(", ")
      erb :'users/new'
    end
  end

  get '/:username/edit' do
    # only allow to edit their own account.
    redirect_if_not_logged_in do
      erb :'users/edit'
    end
  end

  patch '/:username' do
    user = User.find_by(username: params[:username])
    # user.username = params[:user][:username]
    # user.name = params[:user][:name]
    # user.password = params[:user][:password] unless params[:user][:password] == ""
    # user.save
    user.update(params[:user])
    redirect "/#{user.username}/edit"
  end

end
