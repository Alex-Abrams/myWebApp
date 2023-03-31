class UsersController < ApplicationController
  def create
    @user = User.new(user_params)
  end

  def show
    @user = User.find(params[:id])
  end

  def index
    @users = User.all
    render json: @users
  end

  private

  def user_params
    params.require(:users).permit(:email)
  end
#dldl
#dhdhdh
#$$$$$$$$$
#$$$$$$$$$
end
