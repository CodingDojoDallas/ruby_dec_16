class User < ActiveRecord::Base
  has_secure_password
  has_many :parties
  has_many :attendees

  validates :first_name, :last_name,:email,:city,:state, presence: true
  validates :password, length: { minimum: 8 }, :if => :password
  validates :email, uniqueness: true
  validates :email, format: { with: /\A[^@\s]+@([^@.\s]+\.)+[^@.\s]+\z/ }



end
