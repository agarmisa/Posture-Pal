class ProgramsController < ApplicationController
  def show
    @program = Program.find(params[:id])
    @exercises = @program.exercises 
  end
end
