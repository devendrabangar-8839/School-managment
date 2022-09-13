class TeacherDetailsController < ApplicationController
  def index
    @teacher_details = TeacherDetail.all
  end
  def show
    @teacher_detail = TeacherDetail.find(params[:id])
    @user = User.find(params[:id])
  end
  def new
   @teacher_detail = TeacherDetail.new
  end
  def create
    @teacher_detail = TeacherDetail.new(teacher_params)
    if @teacher_detail.save
      render :new
    end
  end
  def update
    @teacher_detail = TeacherDetail.find(params[:id])
    if @teacher_detail.update(teacher_params)
      redirect_to @teacher_detail
    else
      render :edit
    end
  end

    private
    def teacher_params
      params.require(:teacher_detail).permit(:date_of_birth, :salery, :subject_id)
    end
end
