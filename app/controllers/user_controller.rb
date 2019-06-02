class UserController < ApplicationController
  def new
    @user = User.new
  end

  def index
    @users = User.all 
  end

  def show
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end
