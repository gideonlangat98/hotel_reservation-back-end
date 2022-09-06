class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  #Hotel routes
  get "/hotels" do
    hotels = hotel.all
    hotels.to_json
  end

  post "/hotels" do
    hotel = hotel.create(
      name: params[:name],
      location: params[:location],
      price: params[:price]
    )
    hotel.to_json
  end

  patch "/hotels/:id" do
    hotels = hotels.find(params[:id])
    hotels.update(
      name: params[:name],
      price: params[:price]
    )
    hotels.to_json
  end

  delete "/hotels/:id" do
    hotels = hotels.find(params[:id])
    hotels.destroy
    hotels.to_json
  end

  #customer_reviews routes
  get "/customer_reviews" do
    reviews = customer_reviews.all
    reviews.to_json
  end

  post "/customer_reviews" do
    reviews = customer_reviews.create(
      comment: params[:comment]
    )
    reviews.to_json
  end

  patch "/customer_reviews/:id" do
    reviews = customer_reviews.find(params[:id])
    reviews.update(
      comment: params[:comment]
    )
    reviews.to_json
  end

  delete "/customer_reviews/:id" do
    reviews = customer_reviews.find(params[:id])
    reviews.destroy
    reviews.to_json
  end
end
