class Activity < ActiveRecord::Base
	has_many :users, through: :user_activity
end
