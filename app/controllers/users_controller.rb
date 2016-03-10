class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @event = Event.new
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to cocktails_path
    else
      render :new
    end
  end

  def edit
    @user = User.new
  end

  def update
    @user = User.new(user_params)
    if @user.save
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

private

  def user_params
    params.require(:user).permit(:name, :phone_number, :address)
  end
end
