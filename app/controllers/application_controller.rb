class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  # Hotel routes
  get "/hotels" do
    hotels = Hotel.all
    hotels.to_json
  end

  post "/hotels" do
    reserved = Hotel.create(
      name: params[:name],
      location: params[:location],
      price: params[:price]
    )
    reserved.to_json
  end

  patch "/hotels/:id" do
    hotel = Hotel.find(params[:id])
    hotel.update(
      name: params[:name],
      price: params[:price]
    )
    hotel.to_json
  end

  delete "/hotels/:id" do
    hotel = Hotel.find(params[:id])
    hotel.destroy
    hotel.to_json
  end

  # customer_reviews routes
  get "/reviews" do
    reviews = Review.all
    reviews.to_json
  end

  get "/reviews/:id" do
    reviews = Review.find(params[:id])
    reviews.to_json(only: [:id, :body, :users], include: { hotels: { only: [:name, :location, price]}})
  end

  post "/reviews" do
    new_review = Review.create(
      body: params[:body]
    )
    new_review.to_json
  end

  patch "/reviews/:id" do
    reviews = Review.find(params[:id])
    reviews.update(
      comment: params[:comment]
    )
    reviews.to_json
  end

  delete "/reviews/:id" do
    reviews = Review.find(params[:id])
    reviews.destroy
    reviews.to_json
  end
  
end
