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
    @book = Book.new
  end

  def edit
    @user =  User.find(params[:id])
    if @user == current_user
        render "edit"
    else
       redirect_to user_path(current_user)
    end
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:notice] = "You have updated user successfully."
      redirect_to user_path(@user.id)
    else
      render 'edit'
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction)
  end

end
