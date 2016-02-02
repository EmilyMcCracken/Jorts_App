class Profile < ActiveRecord::Base
	belongs_to :user

	# Geocoding by address. Come back and add for later.

  	geocoded_by :address
	after_validation :geocode, :if => :address_changed?

	# attribute Validations
	validates :bio, length: { maximum: 500 }
	validates :fname, length: { maximum: 100 }
	validates :lname, length: { maximum: 100 }
	validates :question, length: { maximum: 200 }

	# Paperclip Validations
  	has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
end
