class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :fname
      t.string :lname
      t.text :bio
      t.string :question

      t.timestamps null: false
    end
  end
end
