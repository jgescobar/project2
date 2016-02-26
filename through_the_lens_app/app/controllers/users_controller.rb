class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "You have successfully signed up!"
      session[:user_id] = @user.id
      redirect_to home_path
    else
      render 'new'
    end
  end

  def update
    @user = User.find(params[:id])
    @user.update_attributes(user_params)
    redirect_to home_path
  end

private
  def user_params
    params.require(:user).permit(:username, :email, :password, :img, :location)
  end
end
