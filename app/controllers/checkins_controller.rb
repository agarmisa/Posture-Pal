class CheckinsController < ApplicationController
  before_action :pre_checkin

  def create
    @value.count += 1
    respond_to do |format|
      @value.save
      @checkin_total = @user.checkins.sum(:count)
      @checkin = @value
      format.json { render json: @checkin_total }
    end
  end

  protected

  def pre_checkin
    @user = User.find(params[:user_id])
    @value = Checkin.where(user: current_user).first_or_initialize
  end
end
