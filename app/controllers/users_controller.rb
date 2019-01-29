class UsersController < ApplicationController
  before_action :logged_in_user, only: [:index, :edit, :update, :destroy]
  #before_action :correct_user,   only: [:edit, :update]
  #before_action :admin_user,     only: [:destroy]
  before_action :authorized_user,only: [:edit, :update, :destroy]
  def index
    @users = User.all
  end
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if  @user.save
      if logged_in? && current_user.admin?
        redirect_to users_url
      else
        log_in @user
        redirect_to @user
      end
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      if logged_in? && current_user.admin?
        redirect_to users_url
      else
        redirect_to @user
      end
    else
      render 'edit'
    end
  end

  def destroy
    User.find(params[:id]).destroy
    redirect_to users_url
  end

  def realtor
    @user = User.find(params[:id])
  end

  def hunter
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :realtor, :hunter, :phone, :method, :company_id)
  end

  # Confirms a logged-in user.
  def logged_in_user
    unless logged_in?
      redirect_to login_url
    end
  end
  # Confirms the correct user.
  def correct_user
    @user = User.find(params[:id])
    redirect_to(login_url) unless current_user?(@user)
  end
  # Confirms an admin user.
  def admin_user
    redirect_to(login_url) unless current_user.admin?
  end
  def authorized_user
    @user = User.find(params[:id])
    redirect_to(login_url) unless current_user?(@user) || current_user.admin?
  end
end