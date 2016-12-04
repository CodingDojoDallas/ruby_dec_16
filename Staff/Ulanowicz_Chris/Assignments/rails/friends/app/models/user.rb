class User < ActiveRecord::Base
  belongs_to :friend, class_name: "User"
  has_many :friends, class_name: "User", foreign_key: "friend_id"
end
