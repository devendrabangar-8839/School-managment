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

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to @user
    else
      render :new, status: :unprocessable_entity
    end
  end
  private
  def user_params
      params.require(:user).permit(:name, :father_name, :email_id, :password, :gender, :role)
      if :role == 'teacher'
        redirect_to @teacher_detail
      else
        render :new, status: :unprocessable_entity
      end
  end
end
