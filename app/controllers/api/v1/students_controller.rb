class Api::V1::StudentsController < ApplicationController

  def index
    @students = Student.all
    render json: @students, status: 200
  end

end
