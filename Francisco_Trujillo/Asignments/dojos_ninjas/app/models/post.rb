class Post < ActiveRecord::Base
	has_many :messages, dependent: :destroy
	belongs_to :blog
	validates :title, :content, presence: true
	validates :title, :content, length:{minimum: 7}
end
