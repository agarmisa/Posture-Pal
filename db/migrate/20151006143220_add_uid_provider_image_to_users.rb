class AddUidProviderImageToUsers < ActiveRecord::Migration
  def change
    add_column :users, :uid, :string
    add_column :users, :provider, :string
    add_column :users, :profile_pic, :string
    add_column :users, :name, :string
  end
end
