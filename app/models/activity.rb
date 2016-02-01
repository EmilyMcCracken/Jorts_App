class Activity < ActiveRecord::Base
	has_many :users, through: :user_activity

	geocoded_by :address
	after_validation :geocode, :if => :address_changed?
end
