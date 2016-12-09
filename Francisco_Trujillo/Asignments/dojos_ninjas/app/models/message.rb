class Message < ActiveRecord::Base
  belongs_to :post
	validate :author, presence: true
	validate :message, length:{minimum: 15}
end
