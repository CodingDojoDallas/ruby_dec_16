class CreateNinjas < ActiveRecord::Migration
  def change
    create_table :ninjas do |t|
      t.string :fname
      t.string :lname
      t.references :dojo, index: true

      t.timestamps
    end
  end
end
