class User < ActiveRecord::Base
    has_many :post
    has_many :owner
    has_many :message
    has_many :rblog, through: :owner
end
