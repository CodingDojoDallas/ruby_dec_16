class Blog < ActiveRecord::Base
  has_many :posts, :dependent => :delete_all
  has_many :owners
  has_many :comments, as: :commentable
  has_many :users, through: :owners
  has_many :messages, through: :posts
  validates :name, :description, presence: true
end
