class StudentDetailsController < ApplicationController
  def index
    @student_details = StudentDetail.all
  end
  def show
    @student_detail = StudentDetail.find(params[:id])
  end
  def new
    @student_detail = StudentDetail.new
  end
  def create
    @student_detail = StudentDetail.new(teacher_params)

    if @student_detail.save
      redirect_to @student_detail
    else
      render :new, status: :unprocessable_entity
    end
  end
    private
    # def teacher_params
    #   params.require(:student_detail).permit(:date_of_birth, :salery)
    # end
end