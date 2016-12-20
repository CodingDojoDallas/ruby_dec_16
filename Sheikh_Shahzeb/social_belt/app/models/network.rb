class Network < ApplicationRecord
	belongs_to :user
	belongs_to :associate, class_name: 'User'
	after_initialize :init

  def init
  	self.connect = false if self.connect.nil?
  end
end
