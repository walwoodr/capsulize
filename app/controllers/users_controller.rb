class UsersController < ApplicationController

  get '/users' do
    erb :'users/index'
  end

  get '/signup' do
    if is_logged_in?
      redirect '/'
    end
    erb :'users/new'
  end

  post '/signup' do
    user = User.create(params[:user])
    session[:user_id] = user.id
    redirect '/clothes'
  end

  get '/:username/edit' do
    # only allow to edit their own account.
    redirect_if_not_logged_in do
      erb :'users/new'
    end
  end

  patch '/:username' do
    #modify account here
  end

end
