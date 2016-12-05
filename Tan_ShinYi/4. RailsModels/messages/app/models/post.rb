class Post < ActiveRecord::Base
  belongs_to :blog
  belongs_to :user
  has_many :comments, as: :commentable
  has_many :messages, :dependent => :delete_all
  validates :title, :content, presence: true
  validates :content, length: {minimum: 7}
end
