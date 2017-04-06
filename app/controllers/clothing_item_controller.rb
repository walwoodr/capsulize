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
    cloth_item = ClothingItem.find(params[:id])
    current_user.clothing_items << cloth_item
    cloth_item.save
    redirect '/clothes/select'
  end

# remove clothing item from your list
    # current_user.clothing_items.delete(clothing_item)

  post '/clothes' do
    # this is much messier than I'd like it to be.
    clothing_item = ClothingItem.new(params[:clothing_item])
    clothing_item.clothing_category = ClothingCategory.find(params[:clothing_category_id])
    clothing_item.users << current_user
    clothing_item.save
    redirect '/clothes'
  end

end
