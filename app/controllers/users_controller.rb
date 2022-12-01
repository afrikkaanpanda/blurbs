class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]
  before_action :logged_in, only: [:index, :show, :edit, :update]
  before_action :authorize_user, only: [:edit, :update]

  def index
    @users = User.paginate(page: params[:page])
  end
  
  def show
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to @user, success: "User was successfully updated"
    end
  end

  private
  def set_user
    @user = User.find(params[:id])
  end

  def logged_in
    unless session[:user_id].present?
      redirect_to login_path
      flash[:danger] = "Please login to continue!"
    end
  end

  def authorize_user
    unless @user == current_user
      redirect_to root_path 
      flash[:danger] = "Unathorized Action!"
    end
  end

  def user_params
    params.require(:user).permit(:avatar, :first_name, :last_name, :birthday, :bio )
  end
end