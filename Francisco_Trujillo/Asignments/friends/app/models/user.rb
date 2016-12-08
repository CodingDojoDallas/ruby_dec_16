class User < ActiveRecord::Base
	has_many :friends, class_name: "Friendship"
	belongs_to :user, class_name: "User", foreign_key: "friend_id"
end
