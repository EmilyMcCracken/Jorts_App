class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
    	t.string :title
    	t.string :body
    	t.references :user
    	t.references :activity

      t.timestamps null: false
    end
  end
end
