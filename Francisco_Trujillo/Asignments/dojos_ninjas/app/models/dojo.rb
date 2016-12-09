class Dojo < ActiveRecord::Base
	validate :name, :city, :state, presence: true
	validate :state, length: {is: 2}
	has_many :ninjas, dependent: :destroy
	before_save do
		self.name.capitalize!
		self.city.capitalize!
		self.state.upcase!
	end
end
