class StudentsController < ApplicationController

  def create
    student = Student.create!(student_params)
    render json: student, status: :created
  end

  def index
    render json: Student.all
  end

  def update
    student = Student.find(params[:id])
    student.update(student_params)
    render json: student
  end

  def destroy
    student = Student.find(params[:id])
    student.destroy
    head :no_content
  end

  private

  def student_params
    params.permit(:name, :age, :major, :instructor_id)
  end

end
