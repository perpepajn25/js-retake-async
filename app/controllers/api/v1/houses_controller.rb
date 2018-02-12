class Api::V1::HousesController < ApplicationController

  def index
    @houses = House.all
    render json: @houses, status: 200
  end

end
