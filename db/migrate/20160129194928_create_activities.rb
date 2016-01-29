class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :name
      t.text :description
      t.string :level
      t.string :type
      t.float :longitude
      t.float :latitude
      t.string :address

      t.timestamps null: false
    end
  end
end
