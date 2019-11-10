class UsersController < ApplicationController
  def index
    render json: User.all
  end

  def create
    @user = User.new(user_params)
    @user.save

    render json: @user
  end

  private

  def user_params
    params.require(:user).permit(:username, :email)
  end
end
