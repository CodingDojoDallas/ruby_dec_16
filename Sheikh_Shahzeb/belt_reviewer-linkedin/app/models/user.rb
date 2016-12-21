class User < ApplicationRecord
	has_many :networks
	has_many :associates, through: :networks



  has_secure_password
	EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
	validates :first_name, :last_name, presence: true, length: { in: 2..20 }
	validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }
	validates :password, presence: true, length: { in: 8..20}
	before_save do
		self.email.downcase!
	end
end
