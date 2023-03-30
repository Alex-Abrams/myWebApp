class UsersController < ApplicationController
  def create
    @user = User.new(user_params)
  end

  def show
    @users = User.find(params[:id])
  end

  def index
    @users = User.all
    render :index
  end

  private

  def user_params
    params.require(:user).permit(:email)
  end

end
