class Owner < ActiveRecord::Base
  belongs_to :rblog
  belongs_to :user
end
