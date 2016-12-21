class AddBuyerToShoes < ActiveRecord::Migration[5.0]
  def change
    add_reference :shoes, :buyer
  end
end
