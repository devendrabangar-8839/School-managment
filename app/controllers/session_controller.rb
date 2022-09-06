class SessionController < ApplicationController
  def index
    redirect_to root_path
  end

  def new
    if logged_in? 
      redirect_to root_path
    else
      render 'new'
    end
  end


end
