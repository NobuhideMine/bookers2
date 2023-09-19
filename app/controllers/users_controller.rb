class UsersController < ApplicationController
  
  def index
    @user = User.all
  end
  
  def show
    @user = User.find(params[:id])
    @book = User.books
  end

  def edit
    @user = User.find(params[:id])
  end

end
