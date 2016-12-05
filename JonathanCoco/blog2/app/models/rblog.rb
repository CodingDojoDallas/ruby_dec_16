class Rblog < ActiveRecord::Base
    has_many :post
    has_many :owner
    has_many :user, through: :owner
end
