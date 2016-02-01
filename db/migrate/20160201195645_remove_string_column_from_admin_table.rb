class RemoveStringColumnFromAdminTable < ActiveRecord::Migration
  def change
  	remove_column :admins, :string
  end
end
