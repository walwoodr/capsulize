class ClothingItemController < ApplicationController

  get '/clothes' do
    redirect_if_not_logged_in do
      @user = User.find(session[:user_id])
      erb :'clothing_items/index'
    end
  end

end
