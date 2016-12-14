class CreateNetworks < ActiveRecord::Migration[5.0]
  def change
    create_table :networks do |t|
      t.boolean :accepted
      t.references :user, foreign_key: true
      t.references :friend

      t.timestamps
    end
  end
end
