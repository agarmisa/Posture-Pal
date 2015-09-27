class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :name, null: false
      t.string :description, null: false
      t.string :repetition, null: false
      t.string :image, null: false
    end
  end
end
