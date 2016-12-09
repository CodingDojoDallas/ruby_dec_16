class User < ActiveRecord::Base
  validates :email_address, :first_name, :last_name, :password, presence: true
end
