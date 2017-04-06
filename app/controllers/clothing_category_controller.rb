class ClothingCategoryController < ApplicationController

  #Create
  get '/categories/new' do
    redirect_if_not_logged_in do
      erb :'categories/new'
    end
  end

  post '/categories' do
    category = ClothingCategory.create(params)
    redirect '/categories'
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

  #Delete

  delete '/categories/:id' do
    # only delete if there are no clothes associated.
    # process form input
  end

end
