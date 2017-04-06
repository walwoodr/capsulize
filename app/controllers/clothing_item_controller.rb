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
    clothing_item = ClothingItem.new(params[:clothing_item])
    clothing_item.clothing_category = ClothingCategory.find(params[:clothing_category_id])
    clothing_item.users << current_user
    clothing_item.save
    redirect '/clothes'
  end

end
