class DropPrograms < ActiveRecord::Migration
  def change
    drop_table :programs do |t|
      t.string "name", null: false
    end
  end
end
