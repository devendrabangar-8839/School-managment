class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end


  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to @user
    else
      render :edit
    end
  end

  def create
    
    @user = User.new(user_params)

    if @user.save
      if @user.student?
        redirect_to new_student_detail_path(user_id: @user.id)
      else @user.teacher?
        redirect_to new_teacher_detail_path(user_id: @user.id)
      end
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to @user
  end


  private
  def user_params
    params.require(:user).permit(:name, :father_name, :email_id, :password, :gender, :role)
  end
end
