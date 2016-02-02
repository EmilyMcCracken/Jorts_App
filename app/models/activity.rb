class Activity < ActiveRecord::Base
	has_many :attending_users, through: :user_activities, source: :user
	belongs_to :user, foreign_key: "user_id"
	has_many :user_activities 

	geocoded_by :address
	after_validation :geocode, :if => :address_changed?

	validates_presence_of :name, :level, :game, :address
end
