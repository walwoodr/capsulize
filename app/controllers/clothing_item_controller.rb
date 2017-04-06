class ClothingItemController < ApplicationController

  get '/clothes' do
    redirect_if_not_logged_in do
      @user = User.find(session[:user_id])
      erb :'clothing_items/index'
    end
  end

  get '/clothes/new' do
    redirect_if_not_logged_in do
      erb :'clothing_items/new'
    end
  end

  post '/clothes' do
    raise params.inspect
  end

end
