class AddCommentableToEverything < ActiveRecord::Migration
  def change
    add_reference :blogs, :commentable, index: true
    add_reference :users, :commentable, index: true
    add_reference :messages, :commentable, index: true
    add_reference :posts, :commentable, index: true

  end
end
