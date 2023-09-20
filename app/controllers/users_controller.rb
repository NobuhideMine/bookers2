class UsersController < ApplicationController
  
  def index
    @user = User.all
    @users = current_user
  end
  
  def show
    @user = User.find(params[:id])
    @books = @user.books
  end

  def edit
    @user = User.find(params[:id])
  end

  
end
