class BooksController < ApplicationController
  def creat
     @book = Book.new(book_params)
     if @book.save
       redirect_to @book,notice: "Book was successfully created."
     else
       @books = Book.all
       render :index
     end
  end
  
   def index
    @books = Book.all
    @book = Book.new
   end
  
   def show
     @user = User.all
     @users = User.find(@user.id)
   end
  
  def edit
   
  end
  
  def update
  end
  
  def destroy
  end
  
end
