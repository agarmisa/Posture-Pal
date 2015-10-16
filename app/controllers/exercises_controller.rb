class ExercisesController < ApplicationController
  def show
    @exercise = Exercise.find(params[:id])
    @exercises = Exercise.all
  end
end
