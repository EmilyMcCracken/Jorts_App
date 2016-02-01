class DropLocationColumnsFromUsersTable < ActiveRecord::Migration
  def change
  	remove_column :users, :ip_address
  	remove_column :users, :latitude
  	remove_column :users, :longitude
  end
end
