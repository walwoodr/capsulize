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

  get '/clothes/select' do
    redirect_if_not_logged_in do
      erb :'clothing_items/select'
    end
  end

  post '/clothes/:id/select' do
    clothing_item = ClothingItem.find(params[:id])
    current_user.clothing_items << clothing_item
    clothing_item.save
    redirect '/clothes/select'
  end

  get '/clothes/:id/remove' do
    clothing_item = ClothingItem.find(params[:id])
    current_user.clothing_items.delete(clothing_item)
    redirect '/clothes'
  end

  post '/clothes' do
    # this is much messier than I'd like it to be.
    binding.pry
    clothing_item = ClothingItem.new(params[:clothing_item])
    clothing_item.clothing_category = ClothingCategory.find(params[:clothing_category_id])
    clothing_item.users << current_user
    binding.pry
    clothing_item.save
    redirect '/clothes'
  end

end
