class UsersController < ApplicationController

  def show
    @user = User.find(user_params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "You have successfully signed up!"
      redirect_to home_path
    else
      render 'new'
  end
end

private
  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end
