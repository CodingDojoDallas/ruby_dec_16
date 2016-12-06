class Ninja < ActiveRecord::Base
	validate :fname, :lname, presence: true
	belongs_to :dojo
	
	before_save do
		self.fname.capitalize!
		self.lname.capitalize!
	end
end
