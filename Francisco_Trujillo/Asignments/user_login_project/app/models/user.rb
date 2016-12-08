class User < ActiveRecord::Base
	validates :fname, :lname, :email, :age, presence: true
	validates :fname, :lname, length:{minimum: 2}
	validates :age, numericality: {only_integer: true, greater_than_or_equal_to: 10, less_than: 150}
end
