class User < ActiveRecord::Base
	has_many :friends, through: :friendships
	has_many :friendships
end
