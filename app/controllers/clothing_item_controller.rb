class ClothingItemController < ApplicationController

  get '/clothes' do
    if is_logged_in?
      @user = User.find(session[:user_id])
      erb :'clothing_items/index'
    else
      redirect '/login'
    end
  end

end
