class Network < ApplicationRecord
  belongs_to :user
  belongs_to :associate, class_name: "User", foreign_key: "associate_id"
end
