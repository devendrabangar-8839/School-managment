class TeacherDetailsController < ApplicationController
  def index
    @teacher_details = TeacherDetail.all
  end
  def show
    @teacher_detail = TeacherDetail.find(params[:id])
  end
  def new
    @teacher_detail = TeacherDetail.new
  end
  def create
    @teacher_detail = TeacherDetail.new(teacher_params)

    if @teacher_detail.save
      redirect_to @teacher_detail
    else
      render :new, status: :unprocessable_entity
    end
  end
    private
    def teacher_params
      params.require(:teacher_detail).permit(:date_of_birth, :salery)
    end
end
