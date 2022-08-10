class StudentsController < ApplicationController

  def index
    students = if params[:name]
                 Student.by_name(params[:name])
               else
                 Student.all
               end    
    render json: students
  end
  
  def student_id 
    students = Student.all.find(params[:id])
    render json: students
  end

end
