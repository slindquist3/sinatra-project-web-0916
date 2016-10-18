class RestaurantsController < ApplicationController

  get '/restaurants' do
    @restaurants = Restaurant.all
    erb :"/restaurants/index.html"
  end

  get '/restaurants/new' do
    erb :"/restaurants/new.html"
  end

  post '/restaurants' do
    @restaurant = Restaurant.create(params)
    redirect to "/restaurants/#{@restaurant.id}"
  end

  get '/restaurants/:id' do
    @restaurant = Restaurant.find(params[:id])
    erb :"/restaurants/show.html"
  end

  get '/restaurants/:id/edit' do
    @restaurant = Restaurant.find(params[:id])
    erb :"/restaurants/edit.html"
    # redirect to "/restaurants/#{@restaurant.id}"
  end

  patch '/restaurants/:id' do
    @restaurant = Restaurant.find(params[:id])
    @restaurant.name = params[:name]
    @restaurant.city = params[:city]
    @restaurant.cuisine = params[:cuisine]
    @restaurant.rating = params[:rating]
    @restaurant.address = params[:address]
    @restaurant.save
    redirect to "/restaurants/#{@restaurant.id}"
  end

  delete '/restaurants/:id/delete' do
    @restaurant = Restaurant.find(params[:id])
    @restaurant.delete
    redirect to "/restaurants"
  end


end
