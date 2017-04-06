class UsersController < ApplicationController

  get '/users' do
    erb :'users/index'
  end

  get '/login' do
    erb :login
  end

end
