class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.phone = params[:user][:phone]
    if @user.save
      flash[:notice] = "Phone number added"
    end
    redirect_to root_path
  end
end
