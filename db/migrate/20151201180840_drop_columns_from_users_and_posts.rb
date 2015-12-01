class DropColumnsFromUsersAndPosts < ActiveRecord::Migration
  def change
    remove_column :posts, :restricted_level
    remove_column :users, :old_access_level
  end
end
