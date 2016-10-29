class Api::V1::DogsController < ApplicationController
  def index
    dogs = Dog.all.includes(:owner)
    render json: dogs, include: :owner
  end

  def create
    dog = Dog.new(dog_params)
    if dog.save
      render json: dog, status: :created
    else
      render json: dog.errors, status: :unprocessable_entity
    end
  end

  private
  def dog_params
    params.require(:dogdog).permit(:name, :breed)
  end

end
