class User < ApplicationRecord
  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  has_many :blogs, through: :owners
  has_many :owners
  has_many :posts
  has_many :messages 
  validates :first_name, :last_name, :email_address, presence: true
  validates :email_address, format: { with: EMAIL_REGEX }
end
