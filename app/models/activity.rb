class Activity < ActiveRecord::Base
	has_many :users, through: :user_activities
	has_many :user_activities 

	geocoded_by :address
	after_validation :geocode, :if => :address_changed?

	validates_presence_of :name, :level, :game, :address
end
