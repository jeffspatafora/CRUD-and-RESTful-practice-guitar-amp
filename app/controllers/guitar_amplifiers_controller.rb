class GuitarAmplifiersController < ApplicationController

  def index
    amp = GuitarAmplifier.all
    render json: amp.as_json
  end

  def create
    amp = GuitarAmplifier.new(
      brand: params[:brand],
      model: params[:model],
      price: params[:price],
      image_url: params[:image_url],
    )
    amp.save
    render json: amp.as_json
  end
   
  def show
    amp = GuitarAmplifier.find_by(id: params[:id])
    render json: amp.as_json
  end

  def update
    amp = GuitarAmplifier.find_by(id: params[:id])
    amp.brand = params[:brand] || amp.brand
    amp.model = params[:model] || amp.model
    amp.price = params[:price] || amp.price
    amp.image_url = params[:image_url] || amp.image_url
    amp.save
    render json: amp.as_json
  end

  def destroy
    amp = GuitarAmplifier.find_by(id: params[:id])
    amp.destroy
    render json: {message: "amp record deleted"}
  end

end
