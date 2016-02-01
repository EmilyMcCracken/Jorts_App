class User < ActiveRecord::Base
	has_one :profile
	has_many :activities, through: :user_activities
	has_many :user_activities

	# need for bcrypt
	has_secure_password

	# need for bcrypt.. translates password_digest to password
	def password=(password)
    self.password_digest = BCrypt::Password.create(password)
  	end

end
