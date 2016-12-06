class Blog < ApplicationRecord
  has_many :blogs
  validates :name, :description, presence: true

end
