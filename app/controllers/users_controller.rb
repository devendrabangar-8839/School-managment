class UsersController < ApplicationController
  before_action :authenticate_user, except: [:create, :new, :destroy]
  
  def index
    #redirect_to users_path and return if current_user
    @users = User.all
  end

  def show
     redirect_to users_path and return if current_user
    @user = User.find(params[:id])
  end

  def new
     redirect_to users_path and return if current_user
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
         
      elsif @user.teacher?

        redirect_to new_teacher_detail_path(user_id: @user.id)
         
      else
        redirect_to new_user_path
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
    params.require(:user).permit(:name, :father_name, :email, :password, :gender, :role)
  end
end
