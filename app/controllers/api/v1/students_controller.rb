class Api::V1::StudentsController < ApplicationController

  def index
    byebug
    render json: @students, status: 200
  end

end
