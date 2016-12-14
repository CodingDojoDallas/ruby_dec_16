class CreateSecrets < ActiveRecord::Migration
  def change
    create_table :secrets do |t|
      t.string :content
      t.references :user, index: true

      t.timestamps
    end
  end
end
