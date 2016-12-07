class ProductsTable < ActiveRecord::Migration
  def change
    add_column :products, :category_id, :integer, :references => "categories"
  end
end
