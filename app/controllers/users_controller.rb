class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params) 
    redirect_to user_path(@user.id)
  end

  def show
    @user = User.find(params[:id])
  end

  def index
    @all_users = User.all
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end

end
