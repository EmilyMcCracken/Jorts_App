class User < ActiveRecord::Base
	# relationships with other classes
	has_one :profile, dependent: :destroy
	has_many :attending_activities, through: :user_activities, source: :activity
	has_many :created_activities, through: :activity, source: :activity
	has_many :user_activities
	has_many :comments, dependent: :destroy

	# need for bcrypt
	has_secure_password

	# Validations
	validates :username, presence: true
	validates :username, uniqueness: true
	validates :email, presence: true
	validates :email, uniqueness: true



	# need for bcrypt.. translates password_digest to password
	def password=(password)
    self.password_digest = BCrypt::Password.create(password)
  	end






end
