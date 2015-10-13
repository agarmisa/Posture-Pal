class ChangeColumnNameCheckins < ActiveRecord::Migration
  def up
    rename_column :checkins, :checkin, :count
  end

  def down
    rename_column :checkins, :count, :checkin
  end
end
