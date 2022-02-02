class CatsController < ApplicationController
  def index 
    cats = HTTP.headers("X-Api-Key" => Rails.application.credentials.cats.api_key
    ).get("https://api.thecatapi.com/v1/breeds").parse(:json)
    render json: breeds
    
  end
  def show 
    cats = HTTP.headers("X-Api-Key" => Rails.application.credentials.cats.api_key).get("https://api.thecatapi.com/v1/breeds/search?q=#{params[:q]}").parse(:json)
    render json: breeds
    
  end
end
