class User < ApplicationRecord
	has_many :shoes
	has_secure_password
end
