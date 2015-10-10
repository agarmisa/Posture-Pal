class CreateCheckins < ActiveRecord::Migration
  def change
    create_table :checkins do |t|
      t.integer :checkin
      t.belongs_to :user, null: false
    end
  end
end
