class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @book = Book.new

  end

  def index
    @user = User.all
    @book =Book.new
    @books = Book.all
  end

  def edit
    @book =Book.new
    @book =Book.find(@user.id)
  end

  def update

  end

  private
  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction)
  end

end
