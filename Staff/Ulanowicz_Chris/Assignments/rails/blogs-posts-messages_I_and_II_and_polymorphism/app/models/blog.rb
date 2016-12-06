class Blog < ActiveRecord::Base
	has_many :owners
	has_many :users, through: :owners
	has_many :posts, dependent: :destroy
	has_many :messages, through: :posts, dependent: :destroy
	has_many :comments, as: :commentable
	validates :name, :description, presence: true
end
