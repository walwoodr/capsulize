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

end
