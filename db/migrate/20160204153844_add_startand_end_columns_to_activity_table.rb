class AddStartandEndColumnsToActivityTable < ActiveRecord::Migration
  def change
  	add_column :activities, :start_time, :timestamp
  	add_column :activities, :end_time, :timestamp
  end
end
