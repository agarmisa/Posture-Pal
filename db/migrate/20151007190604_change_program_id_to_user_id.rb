class ChangeProgramIdToUserId < ActiveRecord::Migration
  def change
    rename_column :exercise_schedules, :program_id, :user_id
  end
end
