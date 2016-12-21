class User < ApplicationRecord
	has_many :network
	has_many :associate, through: :network
  has_secure_password
end
