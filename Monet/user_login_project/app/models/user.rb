class User < ActiveRecord::Base
	validates :first_name, :last_name, :email_address, :age, presence:true
	validates_numericality_of :age, only_integer: true, :greater_than=> 10, :less_than_or_equal_to=>150
	validates :first_name, :last_name, length: {minimum: 2}
end
