class RemoveFriendIdColumn < ActiveRecord::Migration
  def change
  	remove_column :users, :friend_id
  end
end
