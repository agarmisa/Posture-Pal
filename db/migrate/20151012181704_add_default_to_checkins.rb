class AddDefaultToCheckins < ActiveRecord::Migration
  def up
    change_column :checkins, :checkin, :integer, default: 0
  end

  def down
    change_column :checkins, :checkin, :integer, default: nil
  end
end
