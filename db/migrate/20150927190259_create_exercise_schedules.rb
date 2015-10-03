class CreateExerciseSchedules < ActiveRecord::Migration
  def change
    create_table :exercise_schedules do |t|
      t.belongs_to :exercise, null: false
      t.belongs_to :program, null: false
      t.datetime null: false
    end
  end
end
