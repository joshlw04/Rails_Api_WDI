class Api::V1::OwnersController < ApplicationController
  def index
    owners = Owner.all.includes(:dogs)
    render json: owners, include: :dogs
  end

  def create
    owner = Owner.new(owner_params)
    if owner.save
      render json: owner, status: :created
    else
      render json: owner.errors, status: :unprocessable_entity
    end
  end

  private
  def owner_params
    params.require(:dogowner).permit(:name, :age)
  end

end
