class Message < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
	belongs_to :blog
	has_many :comments, as: :commentary
end
