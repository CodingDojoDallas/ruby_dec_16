class Blog < ApplicationRecord
  has_many :users, through: :owners
  has_many :owners
  has_many :posts
  validates :name, :description, presence:true
end
