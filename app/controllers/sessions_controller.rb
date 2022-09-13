  class SessionsController < ApplicationController
    before_action :authenticate_user, except: [:create, :new, :destroy]
  def index
    redirect_to root_path
  end


  def new
    redirect_to signup_path and return if current_user
    user = User.new
  end

  def create
    user = User.find_by(:email => params[:email])
    if user.presence && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to '/'
    else
      
      redirect_to '/login'
    end
  end

  def destroy

    session[:user_id] = nil
    redirect_to '/login'
  end

end