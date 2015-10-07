class DropProgramUsers < ActiveRecord::Migration
  def change
    drop_table :program_users do |t|
      t.belongs_to :program, null: false
      t.belongs_to :users, null: false
    end
  end
end
