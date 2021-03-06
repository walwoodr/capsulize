class OutfitController < ApplicationController

  get '/outfits' do
    redirect_if_not_logged_in do
      erb :'outfits/index'
    end
  end

  get '/outfits/new' do
    redirect_if_not_logged_in do
      erb :'outfits/new'
    end
  end

  post '/outfits' do
    outfit = current_user.outfits.build
    outfit.name = params[:name]
    params[:clothing_items].each do |clothing_item|
      outfit.clothing_items << ClothingItem.find(clothing_item)
    end
    outfit.save
    redirect '/outfits'
  end

  get '/outfits/:id' do
    redirect_if_not_logged_in do
      @outfit = Outfit.find(params[:id])
      erb :'outfits/show'
    end
  end

  get '/outfits/:id/edit' do
    redirect_if_not_logged_in do
      @outfit = Outfit.find(params[:id])
      erb :'outfits/edit'
    end
  end

  patch '/outfits/:id' do
    outfit = Outfit.find(params[:id])
    outfit.name = params[:name]
    outfit.clothing_items.clear
    params[:clothing_items].each do |clothing_item|
      outfit.clothing_items << ClothingItem.find(clothing_item)
    end
    outfit.save
    redirect "/outfits/#{params[:id]}"
  end

  delete '/outfits/:id' do
    outfit = Outfit.find(params[:id])
    outfit.delete
    redirect '/outfits'
  end

end
