class CreateNetworks < ActiveRecord::Migration[5.0]
  def change
    create_table :networks do |t|
      t.references :user, foreign_key: true
      t.references :associate
      t.boolean :connect, default:false

      t.timestamps
    end
  end
end
