class CreateOwners < ActiveRecord::Migration
  def change
    create_table :owners do |t|
      t.references :rblog, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
