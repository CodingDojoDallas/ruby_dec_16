class CreateShoes < ActiveRecord::Migration[5.0]
  def change
    create_table :shoes do |t|
      t.boolean :sold
      t.references :user, foreign_key: true
      t.string :name
      t.float :ammount
      t.string :date

      t.timestamps
    end
  end
end
