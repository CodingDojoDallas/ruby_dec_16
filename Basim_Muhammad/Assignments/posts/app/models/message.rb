class Message < ActiveRecord::Base
  belongs_to :post

  validates :message,:author, presence: true
  validates :message, length: { minimum: 15 }
end
