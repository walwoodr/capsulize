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
    # create new outfit
  end

  get '/outfits/:id' do
    redirect_if_not_logged_in do
      erb :'outfits/show'
    end
  end

  get '/outfits/:id/edit' do
    redirect_if_not_logged_in do
      erb :'outfits/edit'
    end
  end

  patch '/outfits/:id' do
    # change outfit
  end

  delete '/outfits/:id' do
    # delete outfit
  end

end
