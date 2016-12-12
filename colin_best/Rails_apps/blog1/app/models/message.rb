class Message < ApplicationRecord
  belongs_to :post
  validates :author, :messages, presence: true
  validates :messages, length: {greater_than_or_equal_to: 15}
end
