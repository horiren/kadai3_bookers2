class BooksController < ApplicationController
  @books = Book.new
  
  def index
    @books = Book.all
    @users = current_user
    @book = Book.new
  end
  
  def show
    @book = Book.find(params[:id])
    @user = User.find(@book.user_id)
  end
  
  def edit
  end
  
  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to book_path(@book.id)
  end
  
  def destroy
  end
  
  private

  def book_params
    params.require(:book).permit(:title, :body)
  end
  
end
