class ClothingCategoryController < ApplicationController

  #Create
  get '/categories/new' do
    redirect_if_not_logged_in do
      erb :'categories/new'
    end
  end

  post '/categories' do
    category = ClothingCategory.create(params)
    redirect '/clothes/new'
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
      @category = ClothingCategory.find(params[:id])
      erb :'categories/edit'
    end
  end

  patch '/categories/:id' do
    category = ClothingCategory.find(params[:id])
    category.update(params[:category])
    category.save
    redirect '/categories'
  end

  #Delete

  delete '/categories/:id' do
    category = ClothingCategory.find(params[:id])
    category.delete
    redirect '/categories'
  end

end
