class User < ApplicationRecord
  has_secure_password
  has_many :networks
  has_many :friends, through: :networks
end
