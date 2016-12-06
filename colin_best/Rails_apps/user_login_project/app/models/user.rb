class User < ApplicationRecord
  validates :first_name, :last_name, :email, :password, :age, presence: true
  validates :first_name, :last_name, length: { in: 2..20 }
  validates :age, numericality: { greater_than_equal_to: 10, less_than_or_equal_to: 150}
end
