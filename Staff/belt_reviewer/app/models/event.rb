class Event < ApplicationRecord
	belongs_to :host, class_name: 'User', foreign_key: 'user_id'
	belongs_to :state
	has_many :event_rosters, dependent: :destroy
	has_many :users, through: :event_rosters, dependent: :destroy
end
