class User < ApplicationRecord
  belongs_to :state
  has_secure_password
  has_many :comments, dependent: :destroy
  has_many :event_rosters, dependent: :destroy
  #line 7 gets the events a user has joing but is NOT hosting
  has_many :events_attending, through: :event_rosters, source: :event
  #line 9 gets the events a user is HOSTING
  has_many :events
end
