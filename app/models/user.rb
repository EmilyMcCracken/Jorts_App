class User < ActiveRecord::Base
	# relationships with other classes
	has_one :profile
	has_many :attending_activities, through: :user_activities, source: :activity
	has_many :created_activities, through: :activity, source: :activity
	has_many :user_activities
	has_many :comments

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
