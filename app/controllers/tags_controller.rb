class TagsController < ApplicationController

  before_action :find_user, only: %i[new create]
  before_action :set_tag, only: :destroy

  def create
    @tag = @user.tags.new(tag_params)

    if @tag.save
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def destroy
    @tag.destroy
    redirect_to user_path(@tag)
  end

  def new
    @tag = @user.tags.new
  end

  private

  def tag_params
    params.require(:tag).permit(:title, :user_id)
  end

  def set_tag
    @tag = Tag.find(params[:id])
  end

  def find_user
    @user = User.find(params[:user_id])
  end

end
