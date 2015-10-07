class HomesController < ApplicationController
  def index
    @exercises = Exercise.all
  end
end
