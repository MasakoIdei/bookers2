class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])#index画面から送られてきたULR：を受け取る
    @books = @user.books# userのBooksを表示する
    @book = Book.new

  end

  def index
    @user =User.new
    @users = User.all
    @user =current_user
  end

  def edit
    @user =  User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user.id)
  end

  private
  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction)
  end

end
