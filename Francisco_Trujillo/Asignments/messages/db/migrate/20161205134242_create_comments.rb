class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :comment
      t.references :commentary, polymorphic: true, index:true

      t.timestamps
    end
  end
end
