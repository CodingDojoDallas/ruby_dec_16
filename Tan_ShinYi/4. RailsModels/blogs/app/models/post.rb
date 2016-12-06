class Post < ActiveRecord::Base
  belongs_to :blog
  has_many :messages, :dependent => :delete_all
  validates :title, :content, presence: true
  validates :content, length: {minimum: 7}
end
