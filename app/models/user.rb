class User < ActiveRecord::Base
	# relationships with other classes
	has_one :profile
	has_many :activities, through: :user_activities
	has_many :user_activities

	# need for bcrypt
	has_secure_password

	# Validations
	validates :username, presence: true
	validates :email, presence: true



	# need for bcrypt.. translates password_digest to password
	def password=(password)
    self.password_digest = BCrypt::Password.create(password)
  	end






end
