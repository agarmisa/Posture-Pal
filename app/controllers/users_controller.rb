class UsersController < ApplicationController
  before_action :authorize_user, except: [:show, :update]

  def index
    @admins = User.where(role: "admin")
    @members = User.where(role: "member")
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.phone = params[:user][:phone]
    @user.name = params[:user][:name]
    if @user.save
      flash[:notice] = "Phone number and name added"
    end
    redirect_to root_path
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    flash[:notice] = "User deleted."
    redirect_to users_path
  end

  protected

  def authorize_user
    if !current_user || !current_user.admin?
      raise ActionController::RoutingError.new("Not Found")
    end
  end
end
