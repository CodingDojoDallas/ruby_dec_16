class Network < ApplicationRecord
  belongs_to :user
  belongs_to :friend, class_name: 'User'
  after_initialize :init

  def init
  	self.accepted = false if self.accepted.nil?
  end
end
