class AddAssociateToNetwork < ActiveRecord::Migration[5.0]
  def change
    add_reference :networks, :associate, foreign_key: true
  end
end
