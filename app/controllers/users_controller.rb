class UsersController < ApplicationController
  before_action :set_user
  def show
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to @user, notice: "User was successfully updated"
    end
  end

  private
  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :birthday, :bio )
  end
end