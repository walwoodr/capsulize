class ClothingCategoryController < ApplicationController

  #Create
  get '/categories/new' do
    redirect_if_not_logged_in do
      erb :'categories/new'
    end
  end

  post '/categories' do
    #process form input
  end

  #Read - only read list
  get '/categories' do
    redirect_if_not_logged_in do
      erb :'categories/index'
    end
  end

  #Update - update name only
  get '/categories/:id/edit' do
    redirect_if_not_logged_in do
      erb :'categories/edit'
    end
  end

  patch '/categories/:id' do
    # process form input
  end

  #Delete - only delete if there are no clothes associated.

  delete '/categories/:id' do
    # process form input
  end

end
