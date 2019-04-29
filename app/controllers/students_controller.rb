class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  # def new
  #   @student = Student.new
  # end

  def create
    @student = Student.new
    #line above creates a new student
    @student.first_name = params[:first_name]
    @student.last_name = params[:last_name]
    @student.save
    redirect_to student_path(@student)
    #line above redirest to the new student
  end

end
