class Post < ActiveRecord::Base
  belongs_to :rblog
  belongs_to :user
  has_many :message
end
