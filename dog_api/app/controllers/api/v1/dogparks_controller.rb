class Api::V1::DogparksController < ApplicationController
  def index
    parks = Dogpark.all.includes(:owners)
    render json: parks, include: :owners
  end

  def create
    park = Dogpark.new(park_params)
    if park.save
      render json: park, status: :created
    else
      render json: park.errors, status: :unprocessable_entity
    end
  end

  private
  def park_params
    params.require(:dogpark).permit(:location)
  end
end
