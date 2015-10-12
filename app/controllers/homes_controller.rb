class HomesController < ApplicationController
  def index
    @exercises = Exercise.all
    @user = current_user
  end
end
