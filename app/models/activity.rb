class Activity < ActiveRecord::Base
	has_many :attending_users, through: :user_activities, source: :user
	belongs_to :user, foreign_key: "user_id"
	has_many :user_activities 
	has_many :comments

	geocoded_by :address
	after_validation :geocode, :if => :address_changed?

	validates_presence_of :name, :level, :game, :address
	validates :name, length: { maximum: 25 }

	# validates :date_time_future, :true 

	def date_time_future
		# Trying to validate a start time not in the past.
		if :start_time < Time.now
			return false
		end
	end
end
