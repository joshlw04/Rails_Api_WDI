class Api::V1::VisitsController < ApplicationController

  def create
    visit = Visit.new(visit_params)
    if visit.save
      render json: visit, status: :create
    else
      render json: visit.errors, status: :unprocessable_entity
    end
  end

  private
  def visit_params
    params.require(:visit).permit(:owner_id, :dog_id, :dogpark_id)
  end

end
