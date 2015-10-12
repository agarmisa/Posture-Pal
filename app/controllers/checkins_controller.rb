class CheckinsController < ApplicationController
  before_action :pre_checkin

  def create
    @value.checkin += 1
    respond_to do |format|
      @value.save
      @checkin_total = @user.checkins.sum(:checkin)
      format.json { render json: @checkin_total }
    end
  end

  protected

  def pre_checkin
    @user = User.find(params[:user_id])
    @value = Checkin.where(user: current_user).first_or_initialize
  end
end
