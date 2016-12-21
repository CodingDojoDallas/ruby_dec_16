class AddSellerToShoes < ActiveRecord::Migration[5.0]
  def change
    add_reference :shoes, :seller
  end
end
