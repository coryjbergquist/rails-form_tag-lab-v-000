class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def create
    @student = Student.create(params)
    redirect_to action: "show", id: @student.id
  end

  def new

  end

end
