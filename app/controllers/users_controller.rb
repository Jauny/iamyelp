class UsersController < ApplicationController
  
  def index
    @users = User.all  
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(params[:user])
    if @user.save
      sign_in @user
      flash[:notice] = "Successfully signed up!"
      redirect_to @user
    else
      render 'new'
    end
  end
end