class User < ActiveRecord::Base
  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  has_secure_password
  has_many :secrets
  has_many :likes
  has_many :secrets_liked, through: :likes, source: :secret
  validates :name, :email, :password, presence: true
  validates :email, uniqueness: {case_sensitive: false}, format: {with: EMAIL_REGEX}
  validates :password, length: {minimum: 6}
  validates_confirmation_of :password
end
