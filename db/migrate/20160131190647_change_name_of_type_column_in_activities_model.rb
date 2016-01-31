class ChangeNameOfTypeColumnInActivitiesModel < ActiveRecord::Migration
  def change
  	rename_column :activities, :type, :game
  end
end
