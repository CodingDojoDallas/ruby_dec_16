class User < ActiveRecord::Base
  has_many :secrets
  has_many :likes, dependent: :destroy
  has_many :secrets_liked, through: :likes, source: :secret

  has_secure_password
  validates :name, :email, presence: true
  validates :password, :password_confirmation, presence: true, :on => :create
  validates :email, email_format: { message: "The submitted email is of improper format." }
  validates_uniqueness_of :email, :case_sensitive => false
  validates_confirmation_of :password
end
