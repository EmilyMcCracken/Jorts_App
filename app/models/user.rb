class User < ActiveRecord::Base
	# relationships with other classes
	has_one :profile
	has_many :attending_activities, through: :user_activities, source: :activity
	has_many :created_activities, through: :activity, source: :activity
	has_many :user_activities

	# need for bcrypt
	has_secure_password

	# Validations
	validates_presence_of :username

	validates_presence_of :email



	# need for bcrypt.. translates password_digest to password
	def password=(password)
    self.password_digest = BCrypt::Password.create(password)
  	end






end
