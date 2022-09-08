class StudentDetailsController < ApplicationController
  def index
    @student_details = StudentDetail.all
  end
  def show

    @student_detail = StudentDetail.find(params[:id])
    @user = User.find(params[:id])
  end
  
  def new
    @student_detail = StudentDetail.new
  end

  def create
  
    @student_detail = StudentDetail.new(student_params)
      if @student_detail.save
      redirect_to teacher_details_path
    end
  end
  def update
    @student_detail = StudentDetail.find(params[:id])
    if @student_detail.update(student_params)
      redirect_to @student_detail
    else
      render :edit
    end
  end
    private
    def student_params
       params.require(:student_detail).permit(:roll_no, :user_id, :class_detail_id)
    end
end