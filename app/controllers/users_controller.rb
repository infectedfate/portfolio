class UsersController < ApplicationController

  before_action :set_user, only: %i[show destroy update edit]

  def index
    @users = User.all
  end

  def show
  end

  def edit
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def destroy
    @user.destroy
    redirect_to users_path
  end

  def new
    @user = User.new
  end

  def update
    if @user.update(user_params)
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :image_url, :workspace, :about)
  end
end
