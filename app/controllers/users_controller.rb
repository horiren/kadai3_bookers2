class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @books = Book.all
    @users = current_user
    @book = Book.new
  end

  def edit
  end
  
  def index
    @users = User.all
    @books = Book.all
    @user = current_user
    @book = Book.new
  end
end
