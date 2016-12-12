class Post < ApplicationRecord
  belongs_to :blog
  has_many :messages
  validates :title, :content, presence:true
  validates :title, length: {greater_than_or_equal_to: 7}
  
end
