class Product < ActiveRecord::Base
  belongs_to :category

  has_many :comments,  :foreign_key => 'product_id', :class_name =>'Comment'
end
